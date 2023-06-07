extends KinematicBody2D
var velocity = Vector2(0,-1)
var speed = 2000

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)

func _physics_process(delta):
	look_at(get_global_mouse_position())
	var collidedObject = move_and_collide(velocity.normalized() * delta * speed)
	if (collidedObject):
		if "Enemy" in collidedObject.collider.name:
			collidedObject.get_collider().queue_free()
			GlobalVariables.enemyCount = GlobalVariables.enemyCount - 1
			queue_free()
	if position.x < -14000:
		queue_free()
	if position.x > 14000:
		queue_free()
	if position.y > 14000:
		queue_free()
	if position.y < -14000:
		queue_free()
	if GlobalVariables.playerOnScreen == null:
		queue_free()
