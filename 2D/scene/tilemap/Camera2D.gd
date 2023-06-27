extends Camera2D


var tween: Tween


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.is_action_pressed("rclick"):
			if tween:
				tween.kill()
			
			tween = create_tween()
			tween.tween_property(self, "global_position", get_global_mouse_position(), 0.5)
