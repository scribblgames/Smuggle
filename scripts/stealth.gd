extends Label


var canseeyou = false
var guardvis = false
var poposus = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass



func _process(delta):
	if Citizensus.issus < 25:
		set_text ("SAFE")
	if Citizensus.issus < 50 and Citizensus.issus > 26:
		set_text ("SUSPICIOUS")
	if Citizensus.issus < 75 and Citizensus.issus > 51:
		set_text ("VERY SUSPICIOUS")
	if Citizensus.issus < 100 and Citizensus.issus > 76:
		set_text ("DANGER")
	if Citizensus.issus < 125 and Citizensus.issus > 101:
		set_text ("COMPRIMISED")
	if Citizensus.issus < 150 and Citizensus.issus > 126:
		set_text ("!!RUN!!")
