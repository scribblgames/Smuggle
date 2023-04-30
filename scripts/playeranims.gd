extends AnimatedSprite

func _ready():
	animation = "idle"


func _process(delta):
	if Playermovement.moving == true:
		if Playermovement.sneaking == true:
			play("sneakwalk")
		else:
			play ("run")
	if Playermovement.moving == false:
		if Playermovement.sneaking == true:
			play("sneakidle")
		else:
			play("idle")
	if Playermovement.facing == "right":
		flip_h = false
	if Playermovement.facing == "left":
		flip_h = true
