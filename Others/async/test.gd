extends Node2D


@onready var button = $Button
@onready var button2 = $Button2


func _on_button_pressed() -> void:
	print("Button 1 pressed, awaiting button2")
	await button2.pressed
	print("Nice! You pressed button2 and now button1 continue it work")
