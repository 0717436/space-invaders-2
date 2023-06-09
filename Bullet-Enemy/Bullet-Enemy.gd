extends KinematicBody2D

var speed = 500
var velocity
 
# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	set_process(true)
	velocity = GlobalVariables.playerLocation - self.position
	var bullet_rotation = self.rotation

func _physics_process(delta):
	var collidedObject = move_and_collide(velocity.normalized() * speed * delta)
	if (collidedObject):
		print(collidedObject.collider.name)
		if "Enemy" in collidedObject.collider.name:
			pass
		else:
			queue_free()
			GlobalVariables.enemyBulletInstanceCount = GlobalVariables.enemyBulletInstanceCount - 1
			if "Player" in collidedObject.collider.name:
				get_tree().change_scene("res://Menu/Menu.tscn")
	if position.x > 14000:
		queue_free()
		GlobalVariables.enemyBulletInstanceCount = GlobalVariables.enemyBulletInstanceCount - 1
	if position.x < -14000:
		queue_free()
		GlobalVariables.enemyBulletInstanceCount = GlobalVariables.enemyBulletInstanceCount - 1
	if position.y > 7000:
		queue_free()
		GlobalVariables.enemyBulletInstanceCount = GlobalVariables.enemyBulletInstanceCount - 1
	if position.y < -7000:
		queue_free()
		GlobalVariables.enemyBulletInstanceCount = GlobalVariables.enemyBulletInstanceCount - 1

func _process(delta):
	if GlobalVariables.playerOnScreen == null:
		queue_free()
	if GlobalVariables.hardMode:
		speed = 2000
	else:
		speed = 500
