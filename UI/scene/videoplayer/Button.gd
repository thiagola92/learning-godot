extends Button


func _ready():
	pass


func _on_Button_pressed():
	$"../VideoPlayer".paused = false
