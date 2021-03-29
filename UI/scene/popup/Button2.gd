extends Button

func _ready():
	$AcceptDialog.add_button("Not OK")
	$AcceptDialog.add_button("Probably OK", true)
	$AcceptDialog.add_cancel("Cancel")

func _on_Button2_pressed():
	$AcceptDialog.popup()
