extends Node

var score = 0
var key_count = 0
var level_width = 900

@onready var gui = $GUI
@onready var player = %Player


func update_hp():
	gui.update_health(GameData.hp)
	
func _ready():
	if (GameData.is_game_paused):
		gui.show_main_menu()
	update_hp()

func _process(delta):
	if player.is_level_finished || player.is_game_over:
		gui.get_node("ColorRect").visible = true
		if (player.is_level_finished):
			gui.on_level_complete(score)
		if (player.is_game_over):
			gui.on_game_over()


func add_point():
	score += 1
	print(score)
	gui.update_score(score)
	
func add_key():
	key_count += 1
	print("KEY ACQUIRED!")
