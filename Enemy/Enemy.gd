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
	if GlobalVariables.enemyBulletInstanceCount < 100:
		var bulletInstance = bullet.instance()
		GlobalVariables.enemyBulletInstanceCount = GlobalVariables.enemyBulletInstanceCount + 1
		bulletInstance.position = Vector2(global_position.x, global_position.y)
		bulletInstance.look_at(player_position)
		bulletInstance.apply_impulse(Vector2(), Vector2())
		get_tree().get_root().add_child(bulletInstance)
