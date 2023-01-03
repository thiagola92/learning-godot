extends AudioListener2D


func _input(event):
	if event.is_action_pressed("test"):
		self.make_current()
