extends AnimatableBody2D

@onready var helm = $Helm
@onready var sail = $Sail
@onready var animation_player = $Sail/AnimationPlayer
const SPEED = 100

func _physics_process(delta):
	if helm.is_turning:
		position.x += SPEED * delta
		set_sail()

	else:
		douse_sail()

func set_sail():
	if sail.animation == "idle":
		animation_player.play("to_Wind")

func douse_sail():
	if sail.animation == "wind":
		animation_player.play("from_Wind")
