extends CheckButton


func _on_automaticFiring_pressed():
	GlobalVariables.automaticFiring = pressed
	print(pressed)

func _process(delta):
	if GlobalVariables.automaticFiring:
		get_parent().get_property_list().find(pressed)
		pressed = true
