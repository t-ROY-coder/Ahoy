extends Label

@onready var game_manager = %GameManager

func update(score):
	text = str(score)
