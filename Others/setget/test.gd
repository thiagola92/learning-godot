extends Node2D


# The initial value doesn't call set()
var counter: int = 0:
	set(value):
		print(value)
		if value == 0:
			print("ENDING")
		


func _ready():
	pass
