extends Area2D

@onready var audio_stream_player = $AudioStreamPlayer2D
@onready var animated_sprite = $AnimatedSprite2D
@onready var game_manager = %GameManager
var is_reachable = false
var is_chest_open = false

func _process(delta):
	if game_manager.key_count > 0 && Input.is_action_just_pressed("interact") && is_reachable && !is_chest_open:
		open_chest()
		

func open_chest():
	is_chest_open = true
	animated_sprite.play("open")
	audio_stream_player.play()

func _on_body_entered(body):
	is_reachable = true

func _on_body_exited(body):
	is_reachable = false
