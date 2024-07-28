extends CanvasLayer

@onready var score = $MarginContainer/VBoxContainer/HBox/Score
@onready var scoreboard = $ColorRect/MarginContainer/TextureRect/Scoreboard
@onready var hearts = $MarginContainer/VBoxContainer/HBox/Hearts
@onready var color_rect = $ColorRect

@onready var level_complete = $ColorRect/MarginContainer/LevelComplete
@onready var game_over = $ColorRect/MarginContainer/GameOver
@onready var start_menu = $ColorRect/MarginContainer/StartMenu

func update_score(currentScore):
	score.text = str(currentScore)


func _on_exit_button_pressed():
	print("EXIT")
	get_tree().quit()
	
func update_health(count):
	hearts.update_hearts(count)
	
func on_level_complete(coin_count):
	level_complete.visible = true
	game_over.visible = false
	start_menu.visible = false
	level_complete.get_node("Scoreboard").text = "Coins collected: " + str(coin_count)
	
func on_game_over():
	level_complete.visible = false
	game_over.visible = true
	start_menu.visible = false

func _on_restart_button_pressed():
	print("RESTART")
	GameData.hp = 3
	get_tree().reload_current_scene()

func show_main_menu():
	color_rect.visible = true
	level_complete.visible = false
	game_over.visible = false
	start_menu.visible = true

func _on_start_button_pressed():
	print("START")
	color_rect.visible = false
	GameData.is_game_paused = false
