extends Button

func _ready():
	var x = ImageTexture.new()
	x.load("res://icon.png")
	
	$PopupMenu.add_check_item("First")
	$PopupMenu.add_icon_check_item(x, 'Second')
	$PopupMenu.add_icon_item(x, 'Third')
	$PopupMenu.add_icon_radio_check_item(x, 'Fourth')
	$PopupMenu.add_item("Fifth")
	$PopupMenu.add_radio_check_item("Sixth")
	$PopupMenu.add_separator("Seventh")
	$PopupMenu.add_submenu_item("Eighth", "WindowDialog")

func _on_Button4_pressed():
	$PopupMenu.popup()
