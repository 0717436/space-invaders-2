extends CheckButton



func _on_CatMode_pressed():
	GlobalVariables.catMode = pressed
	print(pressed)

func _process(delta):
	if GlobalVariables.catMode:
		get_parent().get_property_list().find(pressed)
		pressed = true

