extends CheckButton




func _on_hardMode_pressed():
	GlobalVariables.hardMode = pressed
	print(pressed)
