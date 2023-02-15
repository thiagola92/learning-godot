extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_pressed():
	play()


func _on_stop_pressed():
	stop()


func _on_animation_finished():
	print("Finished")


func _on_frame_changed():
	print("Changed")
