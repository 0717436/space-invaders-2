extends Control

export(int) var countdownMax
var currentTimer



# Called when the node enters the scene tree for the first time.
func _ready():
	currentTimer = countdownMax
	
	while currentTimer > 0:
		yield(get_tree().create_timer(1.0), "timeout")
		$HUD/Countdown.text = str(currentTimer)
		currentTimer = currentTimer - 1
		print(currentTimer)
	print("Game Over")

