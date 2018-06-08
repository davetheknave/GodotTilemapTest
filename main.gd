extends Node

var frames = 20
var label
var hidden = false

func _ready():
	label = $Layer/HBox/Label

func _process(delta):
	frames -= 1
	if frames < 0:
		label.text = str(Engine.get_frames_per_second())
		frames = 20

func _on_Button_pressed():
	if hidden:
		$TileMap.show()
	else:
		$TileMap.hide()
	hidden = !hidden
