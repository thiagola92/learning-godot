extends ProgressBar


func _ready():
	pass
	
func _process(delta):
	# the addition need to be bigger than the self.step
	self.value += delta * 3
