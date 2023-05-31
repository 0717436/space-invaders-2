extends KinematicBody2D

var movement_speed = 500
var bulletSource = preload("res://Bullet/Bullet.tscn")


func _ready():
	set_process(true)
	set_physics_process(true)


func _process(delta):
	
	GlobalVariables.playerLocation = self.position
	
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
		rotation = rotation + 0.1
	if Input.is_action_pressed("ui_right"):
		rotation = rotation - 0.1
		
	
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * movement_speed
	
	position += velocity * delta
	
