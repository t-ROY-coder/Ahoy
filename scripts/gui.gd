extends CanvasLayer

@onready var score = $MarginContainer/VBoxContainer/HBox/Score
@onready var scoreboard = $ColorRect/MarginContainer/TextureRect/Scoreboard
@onready var hearts = $MarginContainer/VBoxContainer/HBox/Hearts

@onready var level_complete = $ColorRect/MarginContainer/LevelComplete
@onready var game_over = $ColorRect/MarginContainer/GameOver


func update_score(currentScore):
	score.text = str(currentScore)


func _on_exit_button_pressed():
	print("EXIT")
	get_tree().quit()
	
func update_health(count):
	hearts.update_hearts(count)
	
func on_level_complete(coin_count):
	level_complete.visible = true
	level_complete.get_node("Scoreboard").text = "Coins collected: " + str(coin_count)
	
func on_game_over():
	game_over.visible = true
	


func _on_restart_button_pressed():
	print("RESTART")
	GameData.hp = 3
	get_tree().reload_current_scene()
