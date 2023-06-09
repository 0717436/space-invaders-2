extends Sprite

var catTexture = preload("res://Images/20230608_185817.tex")
var alienTexture = preload("res://Images/alienHeads.png")

func _ready():
	set_process(true)

func _process(delta):
	if GlobalVariables.catMode:
		self.set_texture(catTexture)
	else:
		self.set_texture(alienTexture)
