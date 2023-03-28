extends Control

export(int) var countdownMax
var currentTimer



# Called when the node enters the scene tree for the first time.
func _ready():
	currentTimer = countdownMax
	
	while currentTimer > 0:
		yield(get_tree().create_timer(1.0), "timeout")
		$HUD/Countdown.text = str(currentTimer)
		$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
		currentTimer = currentTimer - 1
		print(currentTimer)
	print("Game Over")
	GlobalVariables.bulletInstanceCount = 0
	get_tree().change_scene("res://Menu/Menu.tscn")

func _process(delta):
	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
	if get_tree().get_nodes_in_group("Enemy").size() == 0:
		get_tree().change_scene("res://MainGame/winScene.tscn")
