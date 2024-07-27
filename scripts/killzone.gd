extends Area2D

@onready var game_manager = %GameManager
@onready var timer = $Timer

func _on_body_entered(body):
	print("YOU DIED!")
	body.take_damage(1)
	Engine.time_scale = 0.5
	#body.get_node("AnimatedSprite2D").play("dead")
	body.get_node("CollisionShape2D").queue_free()
	timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
