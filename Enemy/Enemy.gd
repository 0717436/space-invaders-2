extends KinematicBody2D

var speed = 5
var playerPosition
var targetPosition
var bullet = preload("res://Bullet-Enemy/Bullet-Enemy.tscn")
var catTexture = preload("res://Images/20230608_185817.tex")
var alienTexture = preload("res://Images/alienHeads.png")

func _physics_process(delta):
	playerPosition = GlobalVariables.playerLocation
	targetPosition = (playerPosition - position).normalized()
	
	if position.distance_to(playerPosition) > 1:
		var collidedPlayer = move_and_collide(targetPosition * speed)
		
		if collidedPlayer:
			if "Player" in collidedPlayer.collider.name:
				get_tree().change_scene("res://Menu/Menu.tscn")
		

func _process(delta):
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var myRandomNumber = rng.randf_range(2.0, 30.0)
	yield(get_tree().create_timer(myRandomNumber), "timeout")
	if GlobalVariables.enemyBulletInstanceCount < 50:
		var bulletInstance = bullet.instance()
		GlobalVariables.enemyBulletInstanceCount = GlobalVariables.enemyBulletInstanceCount + 1
		bulletInstance.position = Vector2(global_position.x, global_position.y)
		bulletInstance.look_at(playerPosition)
		get_tree().get_root().add_child(bulletInstance)
	if GlobalVariables.playerOnScreen == null:
		queue_free()
