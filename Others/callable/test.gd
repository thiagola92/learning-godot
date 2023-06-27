extends Node


var say_bye: Callable = func():
	print("bye")

func _ready() -> void:
	say_hi()
	
	say_bye.call()
	
	say_bye = func():
		print("what")
	
	say_bye.call()


func say_hi() -> void:
	print("hi")
