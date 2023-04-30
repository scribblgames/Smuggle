extends Area2D


var issus = 1
var cansee = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	
	if issus == 150 or issus > 150: 
		get_tree().change_scene("res://scenes/caught.tscn")
	if Stealth.canseeyou == true:
		issus += 1
	else:
		if issus > 0:
			issus -= .5


func _on_Area2D_area_entered(area):
	if Stealth.canseeyou == true:
		pass
	else:
		Stealth.canseeyou = true



func _on_Area2D_area_exited(area):
	if Stealth.canseeyou == false:
		pass
	else:
		Stealth.canseeyou = false
