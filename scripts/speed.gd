extends Timer


var time = "0"
var inttime = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	time = (str(inttime + 1))
	inttime += 1
	print(time)
