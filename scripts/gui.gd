extends CanvasLayer

@onready var score = $MarginContainer/VBoxContainer/HBox/Score
@onready var scoreboard = $ColorRect/MarginContainer/TextureRect/Scoreboard

func update_score(currentScore):
	score.text = str(currentScore)
	scoreboard.text = "Coins collected: " + str(currentScore)


func _on_exit_button_pressed():
	print("EXIT")
	get_tree().quit()
