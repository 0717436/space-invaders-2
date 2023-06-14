extends Control

export(int) var countdownMax
var currentTimer
var player_position
var target_position

# variables is located on top so the code knows what it means to have the variables written, the variables are written in Lower Camel Case to find it easier to differentiate from functions.

var location = Vector2()
var packed_scene = [
	preload("res://Enemy/Enemy.tscn")
]



func _process(delta):
	if GlobalVariables.enemyCount < 30:
		randomize()
		var x = randi() % packed_scene.size()
		location.x = rand_range(-14000, 14000)
		location.y = rand_range(-14000, 14000)
		var scene = packed_scene[x].instance()
		scene.position = location
		add_child(scene)
		GlobalVariables.enemyCount = GlobalVariables.enemyCount + 1

