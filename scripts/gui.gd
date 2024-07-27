extends CanvasLayer

@onready var score = $MarginContainer/VBoxContainer/HBox/Score
@onready var scoreboard = $ColorRect/MarginContainer/TextureRect/Scoreboard
@onready var hearts = $MarginContainer/VBoxContainer/HBox/Hearts

func update_score(currentScore):
	score.text = str(currentScore)
	scoreboard.text = "Coins collected: " + str(currentScore)


func _on_exit_button_pressed():
	print("EXIT")
	get_tree().quit()
	
func update_health(count):
	hearts.update_hearts(count)
