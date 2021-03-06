$codeFormatterDownloadUri = "https://github.com/dotnet/codeformatter/releases/download/v1.0.0-alpha6/CodeFormatter.zip"
$codeFormatterDownloadLocation = "$env:TEMP\code-formatter.zip"
$codeFormatterExtractLocation = "$env:TEMP\code-formatter\"

# Check that there are no outstanding changes as we will use git status to test if CodeFormatter applied any changes
Write-Host "Checking for changes..."
$gitOutput = $(git status)
$gitHasChanges = ($gitOutput | ?{ $_.Contains("nothing to commit") } | measure).Count -eq 0 # counts lines with "nothing to commit" message
if($gitHasChanges)
{
    Write-Error "Outstanding changes to workspace (before code formatting) - aborting!"
    git status
    exit 10
}
Write-Host "No changes, continuing..."

if (-not (Test-Path "$codeFormatterExtractLocation\CodeFormatter\CodeFormatter.exe")){
    Write-Host "CodeFormatter not found, downloading..."
    (New-Object Net.WebClient).DownloadFile($codeFormatterDownloadUri, $codeFormatterDownloadLocation)
    Expand-Archive -Path $codeFormatterDownloadLocation -DestinationPath $codeFormatterExtractLocation -Force
}

# Run CodeFormatter
Write-Host "Running CodeFormatter..."
&"$codeFormatterExtractLocation\CodeFormatter\CodeFormatter.exe" code-formatter.csproj /copyright:code-formatter.license.txt
if ($LASTEXITCODE -ne 0){
    $exitCode = $LASTEXITCODE
    Write-Error "CodeFormatter failed - exiting"
    exit $exitCode
}
    
# Check for changes, i.e. did CodeFormatter make changes?
Write-Host "Checking for changes..."
git add -A | out-null # add all files as this avoids changes due to CRLF/LF issues (providing we're set up to normalize to LF)
$gitOutput = $(git status)
$gitHasChanges = ($gitOutput | ?{ $_.Contains("nothing to commit") } | measure).Count -eq 0 # counts lines with "nothing to commit" message
if($gitHasChanges)
{
    Write-Error "Outstanding changes to workspace - aborting!"
    Write-Error "Run CodeFormatter and resubmit the pull request"
    git status
    git diff
    exit 20
}

## Check if license is included in GUI files
$pathlist = @("src\Nether.Web\wwwroot\Features")
$filter = "*.ts"
$filelist = Get-ChildItem -Filter $filter -Path $pathlist -Recurse|Select-Object -ExpandProperty FullName
foreach($file in $filelist)
{
    $content = Get-Content $file -TotalCount 2
    if (-not($content -match "LICENSE"))
    {
        Write-Host "License info missing in file " $file
    }
}
$filter = "*.html"
$filelist = Get-ChildItem -Filter $filter -Path $pathlist -Recurse|Select-Object -ExpandProperty FullName
foreach($file in $filelist)
{
    $content = Get-Content $file -TotalCount 2
    if (-not($content -match "LICENSE"))
    {
        Write-Host "License info missing in file " $file
    }
}
