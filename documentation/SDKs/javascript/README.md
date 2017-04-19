#JavaScript SDK for Nether

## Work in Progress

## Downloading the JavaScript SDK for Nether

### Installing the JavaScript SDK for Nether

## Usage

### Analytics

#### Active sessions - daily
You can use the ***Nether.Analytics.GetActiveSessionsDaily*** method to get the total active sessions per day. Returns an array of ActiveSession
##### Example usage
```javascript
var sessions = Nether.Analytics.GetActiveSessionsDaily();
console.log(sessions[0].ActiveSessions + ' for ' + sessions[0].Day + '-' + sessions[0].Month + '-' + sessions[0].Year);
```
#### Active sessions - monthly
You can use the ***Nether.Analytics.GetActiveSessionsMonthly*** method to get the total active sessions per month. Returns an array of ActiveSession
##### Example usage
```javascript
var sessions = Nether.Analytics.GetActiveSessionsMonthly();
console.log(sessions[0].ActiveSessions + ' for ' + sessions[0].Month + '-' + sessions[0].Year);
```
#### Active sessions - yearly
You can use the ***Nether.Analytics.GetActiveSessionsYearly*** method to get the total active sessions per year. Returns an array of ActiveSession
##### Example usage
```javascript
var sessions = Nether.Analytics.GetActiveSessionsYearly();
console.log(sessions[0].ActiveSessions + ' for ' + sessions[0].Year);
```

#### Active users - daily
You can use the ***Nether.Analytics.GetActiveUsersDaily*** method to get the total active users per day. Returns an arry of ActiveUser
##### Example usage
```javascript
var users = Nether.Analytics.GetActiveUsersDaily();
console.log(users[0].ActiveUsers + ' for ' + users[0].Day + '-' + users[0].Month + '-' + users[0].Year);
```
#### Active users - monthly
You can use the ***Nether.Analytics.GetActiveUsersMonthly*** method to get the total active users per month. Returns an arry of ActiveUser
##### Example usage
```javascript
var users = Nether.Analytics.GetActiveUsersMonthly();
console.log(users[0].ActiveUsers + ' for ' + users[0].Month + '-' + users[0].Year);
```
#### Active users - yearly
You can use the ***Nether.Analytics.GetActiveUsersYearly*** method to get the total active users per year. Returns an arry of ActiveUser
##### Example usage
```javascript
var users = Nether.Analytics.GetActiveUsersYearly();
console.log(users[0].ActiveUsers + ' for ' + users[0].Year);
```
#### Durations - daily
You can use the ***Nether.Analytics.GetDurationsDaily*** method to get the average duration per day. Returns an arry of Duration
##### Example usage
```javascript
var durations = Nether.Analytics.GetDurationsDaily();
console.log(durations[0].AverageDuration + ' for ' + durations[0].Day + '-' + durations[0].Month + '-' + durations[0].Year);
```
#### Durations - monthly
You can use the ***Nether.Analytics.GetDurationsMonthly*** method to get the average duration per month. Returns an arry of Duration
##### Example usage
```javascript
var durations = Nether.Analytics.GetDurationsMonthly();
console.log(durations[0].AverageDuration + ' for ' + durations[0].Month + '-' + durations[0].Year);
```
#### Durations - yearly
You can use the ***Nether.Analytics.GetDurationsYearly*** method to get the average duration per year. Returns an arry of Duration
##### Example usage
```javascript
var durations = Nether.Analytics.GetDurationsYearly();
console.log(durations[0].AverageDuration + ' for ' + durations[0].Year);
```
#### Game Durations - daily
You can use the ***Nether.Analytics.GetGameDurationDaily*** method to get the average game duration per day. Returns an arry of Duration
##### Example usage
```javascript
var durations = Nether.Analytics.GetGameDurationDaily();
console.log(durations[0].AverageDuration + ' for ' + durations[0].Day + '-' + durations[0].Month + '-' + durations[0].Year);
```
#### Game Durations - monthly
You can use the ***Nether.Analytics.GetGameDurationMonthly*** method to get the average game duration per month. Returns an arry of Duration
##### Example usage
```javascript
var durations = Nether.Analytics.GetGameDurationMonthly();
console.log(durations[0].AverageDuration + ' for ' + durations[0].Month + '-' + durations[0].Year);
```
#### Game Durations - yearly
You can use the ***Nether.Analytics.GetGameDurationYearly*** method to get the average game duration per year. Returns an arry of Duration
##### Example usage
```javascript
var durations = Nether.Analytics.GetGameDurationYearly();
console.log(durations[0].AverageDuration + ' for ' + durations[0].Year);
```
#### Level Drop Offs - daily
You can use the ***Nether.Analytics.GetLevelDropOffsDaily*** method to get the total count of level drop offs by level and day. Returns an arry of DropOff
##### Example usage
```javascript
var dropOffs = Nether.Analytics.GetLevelDropOffsDaily();
console.log('Level ' + dropOffs[0].ReachedLevel + 'Drop offs: ' + dropOffs[0].TotalCount + ' for ' + dropOffs[0].Day + '-' + dropOffs[0].Month + '-' + dropOffs[0].Year);
```
#### Level Drop Offs - monthly
You can use the ***Nether.Analytics.GetLevelDropOffsMonthly*** method to get the total count of level drop offs by level and month. Returns an arry of DropOff
##### Example usage
```javascript
var dropOffs = Nether.Analytics.GetLevelDropOffsMonthly();
console.log('Level ' + dropOffs[0].ReachedLevel + 'Drop offs: ' + dropOffs[0].TotalCount + ' for ' + dropOffs[0].Month + '-' + dropOffs[0].Year);
```
#### Level Drop Offs - yearly
You can use the ***Nether.Analytics.GetLevelDropOffsYearly*** method to get the total count of level drop offs by level and year. Returns an arry of DropOff
##### Example usage
```javascript
var dropOffs = Nether.Analytics.GetLevelDropOffsYearly();
console.log('Level ' + dropOffs[0].ReachedLevel + 'Drop offs: ' + dropOffs[0].TotalCount + ' for ' + dropOffs[0].Year);
```
### Identiy

### Leaderboard

#### Get Leaderboard
You can use the ***Nether.Leaderboard.GetLeaderboard*** method to get the currently configured Leaderboard. Returns an array of Leaderboard
##### Example usage
```javascript
var leaderboard = Nether.Leaderboard.GetLeaderboard();
```
### Get Leaderboard by name
You can use the ***Nether.Leaderboard.GetLeaderboardFromName*** method to get all of the gammer tags and highscores for the specified Leaderboard. Returns a LeaderboardSummary object
#### Example usage
```javascript
var leaderboardScores = Nether.Leaderboard.GetLeaderboard('testboard');
```

### Put score
You can use the ***Nether.Score.PutScore*** method to add a players score.
#### Example usage
```javascript
Nether.Scores.AddScore('UK', 100, 'customTag');
Nether.Scores.AddScore('UK', 100);
```

### Drop scores
You can use the ***Nether.Score.DropMyScore*** method to delete all scores for the logged in player
#### Example usage
```javascript
Nether.Scores.DropMyScore();
```
### Player Management

### Get the current Player
You can use the ***Nether.Player.GetCurrentPlayer*** method to get the current player details. Returns a Player object
#### Example usage
```javascript
var player = Nether.Player.GetCurrentPlayer();
```
### Put Player
You can use the ***Nether.Player.PutCurrentPlayer*** method to update Players details
#### Example usage
```javascript
Nether.Player.PutCurrentPlayer('gammerTag', 'country', 'customTag');
```
### Add current player to group
You can use the ***Nether.Player.AddCurrentPlayerToGroup*** method to add the current player to a group
#### Example usage
```javascript
Nether.Player.AddCurrentPlayerToGroup('groupName');
```

### Delete current player
You can use the ***Nether.Player.DeleteCurrentPlayer*** method to delete the current player
#### Example usage
```javascript
Nether.Player.DeleteCurrentPlayer();
```

### Get current player state
You can use the ***Nether.Player.GetCurrentPlayerState*** method to get the state of the current player. Returns a PlayerState object
#### Example usage
```javascript
var playerState = Nether.Player.GetCurrentPlayerState();
```

### Put current player state
You can use the ***Nether.Player.PutCurrentPlayerState*** method to update the current players player state.
#### Example usage
```javascript
Nether.Player.PutCurrentPlayerState('gamerTag', 'state');
```

### Get Player Groups
You can use the ***Nether.Player.GetPlayerGroups*** method to get the groups for the current player. Returns an array of Groups
#### Example usage
```javascript
var groups = Nether.Player.GetPlayerGroups();
```

## Player Identity

#### Get Gamer Tag From Player Id
You can use the ***Nether.Player.Identity.GetGammerTag*** method to get the players gammer tag from their player Id. Returns a string with the gamer tag
#### Example usage
```javascript
var gamerTag = Nether.Player.Identity.GetGammerTag('playerId');
```

#### Set Gamer Tag From Player Id
You can use the ***Nether.Player.Identity.SetGammerTag*** method to set the players gammer tag
#### Example usage
```javascript
Nether.Player.Identity.SetGammerTag('playerid', 'gammerTag');
```
## Administrate players

### Get Players
You can use the ***Nether.Player.Admin.GetPlayers*** method to get a list of players. Returns an array of Player
#### Example usage
```javascript
var players = Nether.Player.Admin.GetPlayers();
```

### Get Player
You can use the ***Nether.Player.Admin.GetPlayer*** method to get a player by their gammer tag. Returns a Player object
#### Example usage
```javascript
var player = Nether.Player.Admin.GetPlayer('gamerTag');
```

### Create a new Player
You can use the ***Nether.Player.Admin.CreatePlayer*** method to create a new player. QUESTION IS USERID = PLAYERID. NOT SURE WHAT THIS IS RETURNING
#### Example usage
```javascript
Nether.Player.Admin.CreatePlayer('userid', 'gamerTag', 'country', 'customTag');
```

### Get player state
You can use the ***Nether.Player.Admin.GetPlayerState*** method to get the state of a player. Returns a PlayerState object
#### Example usage
```javascript
var playerState = Nether.Player.Admin.GetPlayerState('gamerTag');
```

### Post player state
You can use the ***Nether.Player.Admin.PostPlayerState method*** to set the state of a player
#### Example usage
```javascript
Nether.Player.Admin.PostPlayerState('gamerTag', 'playerState');
```

### Get Player groups
You can use the ***Nether.Player.Admin.GetPlayerGroups*** method to get the groups for a player. Returns an array of Group
#### Example usage
```javascript
var groups = Nether.Player.Admin.GetPlayerGroups('gamerTag');
```

### Add player to a group
You can use the ***Nether.Player.Admin.AddPlayerToGroup*** method to add the player to a group
#### Example usage
```javascript
Nether.Player.Admin.AddPlayerToGroup('gamerTag', 'groupName');
```

### Delete player from a group
You can use the ***Nether.Player.Admin.DeletePlayerFromGroup*** method to delete a player from a group
#### Example usage
```javascript
Nether.Player.Admin.DeletePlayerFromGroup('gamerTag', 'groupName');
```

## Groups

### Get Group Players
You can use the ***Nether.Groups.GetGroupPlayers*** method to get players in a group. Returns an array of string
#### Example usage
```javascript
var players = Nether.Groups.GetGroupPlayers('groupName');
```

## Administrate Groups

### Get Group
You can use the ***Nether.Groups.Admin.GetGroup*** method to get a group. Returns a Group object
#### Example usage
```javascript
var group = Nether.Groups.Admin.GetGroup();
```

### Put Group
You can use the ***Nether.Groups.Admin.PutGroup*** method to create a new group
#### Example usage
```javascript
Nether.Groups.Admin.PutGroup('groupName', 'groupType', 'description', gamerTag[]);
```

### Get Group Players
You can use the ***Nether.Groups.Admin.GetGroupPlayers*** method to get players in a group. Returns an array of string
#### Example usage
```javascript
var players = Nether.Groups.Admin.GetGroupPlayers('groupName');
```

## Objects
### ActiveSession
```javascript
class ActiveSession {
    constructor(year, month, day, activeSessions);
}
```
### ActiveUser
```javascript
class ActiveUser {
    constructor(year, month, day, activeUsers);
}
```
### Duration
```javascript
class Duration {
    constructor(year, month, day, AverageDuration, name);
}
```
### DropOff
```javascript
class DropOff {
    constructor(year, month, day, reachedLevel, totalCount);
}
```
### Leaderboard
```javascript
class Leaderboard {
    constructor(name, link);
}
```
### LeaderboardSummary
```javascript
class LeaderboardSummary {
    constructor(gamerTag, score, rank, isCurrentPlayer);
}
```
### Player
```javascript
class Player {
    constructor(gamerTag, country, customTag);
}
```
### PlayerState
```javascript
class PlayerState {
    constructor(gamerTag, state);
}
```
### Group
```javascript
class Group {
    constructor(name, customType, description);
}
```
