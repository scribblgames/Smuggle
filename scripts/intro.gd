extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	frame = 0

func _process(delta):
	if Input.is_action_pressed("space"):
		get_tree().change_scene("res://scenes/train.tscn")


func _on_AnimatedSprite_animation_finished():
	get_tree().change_scene("res://scenes/train.tscn")
