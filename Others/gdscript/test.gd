extends Node2D


func _ready() -> void:
	print("""Hi friend!
Can i help you?
	1- Yes
	2- No""")
	
	print("""
		Hi friend!
		Can i help you?
			1- Yes
			2- No
	""".dedent().strip_edges())


