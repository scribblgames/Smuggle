extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	play("silent")



func _process(delta):
	if Stealth.canseeyou == true:
		pass
	else:
		pass


func _on_Area2D_area_entered(area):
	play("see")


func _on_Area2D_area_exited(area):
	play("silent")
