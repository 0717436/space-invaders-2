extends CheckButton




func _on_hardMode_pressed():
	GlobalVariables.hardMode = pressed
	print(pressed)

# tells the code that hard mode is pressed

func _process(delta):
	if GlobalVariables.hardMode:
		get_parent().get_property_list().find(pressed)
		pressed = true

# sets the Variable to true
