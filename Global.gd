extends Node

var bulletInstanceCount = 0 # Keeps track of how many bullet instances are current
var enemyBulletInstanceCount = 0

var saveFile = "user://save.dat"

var automaticFiring = false

var hardMode = false

var shipRotation = 0

var playerLocation = Vector2(0, 0)

var scoringInformation = {
	"currentScore": 0,
	"currentPlayer": "User",
	"highScores": 0,
	"highScorePlayersName": "Winner"
}

var previousScores = [203,20,245,13,199]

func calculateAverageScore():
	var _average = previousScores

var enemyPosition = Vector2(0, 0)

var EnemyCount = 0
