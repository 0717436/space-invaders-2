extends KinematicBody2D

var speed = 500
# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalVariables.enemyBulletInstanceCount += 1
	set_physics_process(true)


func _physics_process(delta):
	var collidedObject = move_and_collide(Vector2(0, speed*delta))
	if (collidedObject):
		print(collidedObject.collider.name)
		if "Enemy" in collidedObject.collider.name:
			pass
		else:
			queue_free()
			GlobalVariables.enemyBulletInstanceCount -= 1
			if "Player" in collidedObject.collider.name:
				get_tree().change_scene("res://Menu/Menu.tscn")

func _process(delta):
	if GlobalVariables.hardMode:
		speed = 1000
	else:
		speed = 500
