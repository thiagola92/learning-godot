extends Camera2D


func _input(event):
	if event.is_action_pressed("test"):
		self.current = true
