extends Button

func _ready():
	pass 

func _on_Start_Game_Button_pressed():
	get_tree().change_scene("res://MainGame/MainGame.tscn")

# changes to main game scene
