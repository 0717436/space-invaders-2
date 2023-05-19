extends Control

export(int) var countdownMax
var currentTimer
var player_position
var target_position

var location = Vector2()
var packed_scene = [
	preload("res://Enemy/Enemy.tscn")
]



func _process(delta):
	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
	if GlobalVariables.EnemyCount < 25:
		randomize()
		var x = randi() % packed_scene.size()
		location.x = rand_range(-14000, 14000)
		location.y = rand_range(-7000, 7000)
		var scene = packed_scene[x].instance()
		scene.position = location
		add_child(scene)
		GlobalVariables.EnemyCount = GlobalVariables.EnemyCount + 1

