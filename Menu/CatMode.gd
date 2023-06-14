extends CheckButton



func _on_CatMode_pressed():
	GlobalVariables.catMode = pressed
	print(pressed)

# tells the code that cat mode is pressed

func _process(delta):
	if GlobalVariables.catMode:
		get_parent().get_property_list().find(pressed)
		pressed = true

# sets the Variable to true
