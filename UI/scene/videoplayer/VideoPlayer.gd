extends VideoPlayer


func _ready():
	self.paused = true


func _on_VideoPlayer_finished():
	self.play()
