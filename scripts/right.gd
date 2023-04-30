extends CollisionShape2D





func _ready():
	position = Vector2(0, 0)


func _process(delta):
	yield(VisualServer, 'frame_post_draw')
	if Lookersee.direction == "right":
		disabled = false
	else:
		disabled = true
