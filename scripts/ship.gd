extends AnimatableBody2D

@onready var helm = $Helm
const SPEED = 100

func _physics_process(delta):
	if helm.is_turning:
		position.x += SPEED * delta
