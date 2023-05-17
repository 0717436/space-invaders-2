extends KinematicBody2D

var speed = 200
var player_position
var target_position

func _physics_process(delta):
	player_position = GlobalVariables.playerLocation
	target_position = (player_position - position).normalized()
	
	if position.distance_to(player_position) > 1:
		move_and_slide(target_position * speed)
