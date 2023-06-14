extends KinematicBody2D

var speed = 500
var velocity
 
# variables is locatred on top so the code knows what it means to have the variables written, the variables are written in Lower Camel Case to find it easier to differentiate from functions.

func _ready():
	set_physics_process(true)
	set_process(true)
	velocity = GlobalVariables.playerLocation - self.position

# sets process and physics process to true, changes velocity to the players position mnius their positon to move towards the player.

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

# moves the enemy bullet towards the enemy, if the bullet collides with an enemy, it goes passed it. but if the bullet collides with player, it changes the scene back to the menu.

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

# if the enemy bullet touches the border, the enemy bullet deletes itself

func _process(delta):
	if GlobalVariables.playerOnScreen == null:
		queue_free()
	if GlobalVariables.hardMode:
		speed = 2000
	else:
		speed = 500

# if hard mode turns on, the speed will increase
