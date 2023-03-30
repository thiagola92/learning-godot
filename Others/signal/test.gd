extends Node2D


signal finished


func _ready():
	# Não existe garantia da ordem
	finished.connect(say_bye)
	finished.connect(say_whatever)
	finished.emit()
	finished.emit()
	print("hi")


func say_bye():
	print("bye")


func say_whatever():
	print("whatever")
