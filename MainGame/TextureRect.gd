extends TextureRect

var spirteTexture = preload("res://Images/20230608_185817.tex")
var spaceTexture = preload("res://Images/Amongus.jpg")

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	

func _process(delta):
	if GlobalVariables.catMode == true:
		self.set_texture(spirteTexture)
	else:
		self.set_texture(spaceTexture)
