extends KinematicBody2D

var speed = 200
var player_position
var target_position
var bullet = preload("res://Bullet-Enemy/Bullet-Enemy.tscn")

func _physics_process(delta):
	player_position = GlobalVariables.playerLocation
	target_position = (player_position - position).normalized()
	
	if position.distance_to(player_position) > 1:
		move_and_slide(target_position * speed)
		

func _process(delta):
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var my_random_number = rng.randf_range(2.0, 30.0)
	yield(get_tree().create_timer(my_random_number), "timeout")
	if GlobalVariables.enemyBulletInstanceCount < 5:
		var bulletInstance = bullet.instance()
		bulletInstance.position = Vector2(global_position.x, global_position.y)
		get_tree().get_root().add_child(bulletInstance)
