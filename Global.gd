extends Node

var bulletInstanceCount = 0

var enemyBulletInstanceCount = 0 # Keeps track of how many enemy bullet there are

var saveFile = "user://save.dat" # the users saved data

var automaticFiring = false # keeps track of automatic firing

var hardMode = false # keeps track of hard mode

var catMode = false # keeps track of cat mode

var shipRotation = 0 # keeps track of the rotation of the player

var playerLocation = Vector2(0, 0) # keeps track of the postion of the player

var scoringInformation = {
	"currentScore": 0,
	"currentPlayer": "User",
	"highScores": 0,
	"highScorePlayersName": "Winner"
} # keeps track of the players information

var enemyPosition = Vector2(0, 0) # keeps track of the postion of the enemy

var enemyCount = 0 # keeps track of how many enemies are on the screen

var playerOnScreen = "res://Player/Player.tscn" # the player if on screen

var Menu = "res://Menu/Menu.tscn" # the menu if on screen
