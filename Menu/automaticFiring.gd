extends CheckButton


func _on_automaticFiring_pressed():
	GlobalVariables.automaticFiring = pressed
	print(pressed)
