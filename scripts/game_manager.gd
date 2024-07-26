extends Node

var score = 0
var key_count = 0
var level_width = 900

@onready var gui = $GUI
@onready var player = %Player

func _ready():
	gui.get_node("ColorRect").visible = false

func _process(delta):
	if (player.is_level_finished):
		gui.get_node("ColorRect").visible = true


func add_point():
	score += 1
	print(score)
	gui.update_score(score)
	
func add_key():
	key_count += 1
	print("KEY ACQUIRED!")
