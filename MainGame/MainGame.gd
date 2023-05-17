extends Control

export(int) var countdownMax
var currentTimer
var player_position
var target_position



func _process(delta):
	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
