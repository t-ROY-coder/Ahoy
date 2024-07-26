extends Node

var score = 0
var key_count = 0
@onready var gui = $GUI

func add_point():
	score += 1
	print(score)
	gui.update_score(score)
	
func add_key():
	key_count += 1
	print("KEY ACQUIRED!")
