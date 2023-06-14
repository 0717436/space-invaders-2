extends TextureRect

var spirteTexture = preload("res://Images/20230608_185817.tex")
var spaceTexture = preload("res://Images/Amongus.jpg")


func _ready():
	set_process(true)
	

func _process(delta):
	if GlobalVariables.catMode == true:
		self.set_texture(spirteTexture)
	else:
		self.set_texture(spaceTexture)

# if cat mode is on, change texture of sprite to cat
