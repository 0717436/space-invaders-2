extends Node

var bulletInstanceCount = 0 # Keeps track of how many bullet instances are current
var enemyBulletInstanceCount = 0

var automaticFiring = false

var hardMode = false

var scoringInformation = {
	"currentScore": 0,
	"currentPlayer": "User",
	"highScore": 0,
	"highScorePlayersName": "Winner"
}

var previousScores = [203,20,245,13,199]

func calculateAverageScore():
	var _average = previousScores
