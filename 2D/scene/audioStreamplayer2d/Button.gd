extends Button


func _ready():
	pass


func _on_Button_pressed():
	$AudioStreamPlayer2D.play()


func _on_Button3_pressed():
	$AudioStreamPlayer2D.stop()
