extends KinematicBody2D

var speed = 900

# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalVariables.bulletInstanceCount += 1
	set_physics_process(true)

func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		var collidedObject = move_and_collide(Vector2(0, -speed*delta))
		if (collidedObject):
			print(collidedObject.collider.name)
			if "Enemy" in collidedObject.collider.name:
				collidedObject.get_collider().queue_free()
				GlobalVariables.scoringInformation["currentScore"] +=100
			queue_free()
			GlobalVariables.bulletInstanceCount -= 1
	if Input.is_action_pressed("ui_down"):
		var collidedObject = move_and_collide(Vector2(0, speed*delta))
		if (collidedObject):
			print(collidedObject.collider.name)
			if "Enemy" in collidedObject.collider.name:
				collidedObject.get_collider().queue_free()
				GlobalVariables.scoringInformation["currentScore"] +=100
			queue_free()
			GlobalVariables.bulletInstanceCount -= 1
	if Input.is_action_pressed("ui_left"):
		var collidedObject = move_and_collide(Vector2(-speed*delta, 0))
		if (collidedObject):
			print(collidedObject.collider.name)
			if "Enemy" in collidedObject.collider.name:
				collidedObject.get_collider().queue_free()
				GlobalVariables.scoringInformation["currentScore"] +=100
			queue_free()
			GlobalVariables.bulletInstanceCount -= 1
	if Input.is_action_pressed("ui_right"):
		var collidedObject = move_and_collide(Vector2(speed*delta, 0))
		if (collidedObject):
			print(collidedObject.collider.name)
			if "Enemy" in collidedObject.collider.name:
				collidedObject.get_collider().queue_free()
				GlobalVariables.scoringInformation["currentScore"] +=100
			queue_free()
			GlobalVariables.bulletInstanceCount -= 1
