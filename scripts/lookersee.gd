extends AnimatedSprite

var direction = "left"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _process(delta):
	print(direction)

func _on_AnimatedSprite_animation_finished():
	if direction == "left":
		play ("down")
		direction = "down"
	elif direction == "down":
		play ("right")
		direction = "right"
	elif direction == "right":
		play ("left")
		direction = "left"
