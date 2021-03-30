extends Button


func _ready():
	pass


func _on_Button2_pressed():
	$"../VideoPlayer".paused = true
