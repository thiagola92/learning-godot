extends Button


func _on_pressed():
	var p: AudioStreamPlayer2D = get_parent().get_node("Record")
	p.play()
