extends CheckButton

func _ready():
	pass



func _on_automaticFiring_pressed():
	print(pressed)
	GlobalVariables.hardMode = pressed
