extends Area2D

@onready var animated_sprite = $AnimatedSprite2D
var is_reachable = false
var is_turning = false


func _process(delta):
	if Input.is_action_just_pressed("interact") && is_reachable:
		print("interact start")
		is_turning = true
		animated_sprite.play("turn")
	
	if (Input.is_action_just_released("interact") || !is_reachable) && animated_sprite.animation == "turn":
		print("interact stop")
		is_turning = false
		animated_sprite.play("idle")

func _on_body_entered(body):
	is_reachable = true

func _on_body_exited(body):
	is_reachable = false
