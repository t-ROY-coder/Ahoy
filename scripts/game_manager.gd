extends Node

var score = 0
@onready var gui = $GUI

func add_point():
	score += 1
	print(score)
	gui.update_score(score)
