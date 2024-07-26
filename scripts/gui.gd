extends CanvasLayer

@onready var score = $MarginContainer/VBoxContainer/HBox/Score

func update_score(currentScore):
	score.text = str(currentScore)
