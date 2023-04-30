extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var guardsus = 0

func _process(delta):
	if guardsus == 150 or guardsus > 150: 
		get_tree().change_scene("res://scenes/caught.tscn")
	if Stealth.guardvis == true:
		guardsus += 50
	else:
		if guardsus > 0:
			guardsus -= .5


func _on_Area2D_area_entered(area):
	if Playermovement.sneaking == true:
		pass
	else:
		if Stealth.guardvis == true:
			pass
		else:
			Stealth.guardvis = true



func _on_Area2D_area_exited(area):
	if Stealth.guardvis == false:
		pass
	else:
		Stealth.guardvis = false
