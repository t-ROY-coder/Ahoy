extends AnimatableBody2D

@onready var helm = $Helm
@onready var sail = $Sail
@onready var animation_player = $Sail/AnimationPlayer
@onready var water_splash_1 = $WaterSplash1
@onready var water_splash_2 = $WaterSplash2
const SPEED = 100

func _ready():
	water_splash_1.visible = false
	water_splash_2.visible = false

func _physics_process(delta):
	if helm.is_turning:
		position.x += SPEED * delta
		set_sail()

	else:
		douse_sail()

func set_sail():
	if sail.animation == "idle":
		animation_player.play("to_Wind")
		water_splash_1.visible = true
		water_splash_2.visible = true
		water_splash_1.play("splash_1")
		water_splash_2.play("splash_2")

func douse_sail():
	if sail.animation == "wind":
		animation_player.play("from_Wind")
		water_splash_1.visible = false
		water_splash_2.visible = false
		water_splash_1.stop()
		water_splash_2.stop()
