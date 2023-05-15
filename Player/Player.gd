extends KinematicBody2D

var movement_speed = 500
var bulletSource = preload("res://Bullet/Bullet.tscn")

func _ready():
	set_process(true)
	set_physics_process(true)

func _process(delta):
	if GlobalVariables.automaticFiring:
		if Input.is_action_pressed("fire"):
			if GlobalVariables.bulletInstanceCount < 100:
				var bulletInstance = bulletSource.instance()
				bulletInstance.position = Vector2(position.x, position.y)
				get_tree().get_root().add_child(bulletInstance)
				yield()
	
	elif Input.is_action_just_pressed("fire"):
		if GlobalVariables.bulletInstanceCount < 3:
			var bulletInstance = bulletSource.instance()
			bulletInstance.position = Vector2(position.x, position.y)
			get_tree().get_root().add_child(bulletInstance)
		
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		move_and_collide(Vector2(-movement_speed * delta, 0))
		self.rotation_degrees = -90
		GlobalVariables.shipRotation = rotation_degrees
	if Input.is_action_pressed("ui_right"):
		move_and_collide(Vector2(movement_speed * delta, 0))
		self.rotation_degrees = 90
		GlobalVariables.shipRotation = rotation_degrees
	if Input.is_action_pressed("ui_up"):
		move_and_collide(Vector2(0, -movement_speed * delta))
		self.rotation_degrees = 0
		GlobalVariables.shipRotation = rotation_degrees
	if Input.is_action_pressed("ui_down"):
		move_and_collide(Vector2(0, movement_speed * delta))
		self.rotation_degrees = 180
		GlobalVariables.shipRotation = rotation_degrees
