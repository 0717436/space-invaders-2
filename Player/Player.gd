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
				bulletInstance.velocity = get_global_mouse_position() - bulletInstance.positon
				get_tree().get_root().add_child(bulletInstance)
				yield()
	
	elif Input.is_action_just_pressed("fire"):
		if GlobalVariables.bulletInstanceCount < 3:
			var bulletInstance = bulletSource.instance()
			bulletInstance.position = Vector2(position.x, position.y)
			bulletInstance.velocity = get_global_mouse_position() - bulletInstance.position
			get_tree().get_root().add_child(bulletInstance)
	if position.x < -14000:
		get_tree().change_scene("res://Menu/Menu.tscn")
	if position.x > 14000:
		get_tree().change_scene("res://Menu/Menu.tscn")
	if position.y > 14000:
		get_tree().change_scene("res://Menu/Menu.tscn")
	if position.y < -14000:
		get_tree().change_scene("res://Menu/Menu.tscn")

func _physics_process(delta):
	look_at(get_global_mouse_position())
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.RIGHT.rotated(rotation) * movement_speed
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2.LEFT.rotated(rotation) * movement_speed
	
	position += velocity * delta
	
