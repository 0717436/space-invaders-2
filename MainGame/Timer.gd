extends Timer


var enemy = preload("res://Enemy/Enemy.tscn")

var spawnposition = GlobalVariables.enemyPosition

func _on_Timer_timeout():
	add_child(enemy)
	enemy. = Vector2(rand_range(-14000, 14000), rand_range(-7000, 7000))
	wait_time = rand_range(0,5)
