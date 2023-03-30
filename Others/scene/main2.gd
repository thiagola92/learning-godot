extends Node2D


func _ready():
	var s: PackedScene = preload("res://scene/main.tscn")
	var n = s.instantiate()
	n.print_hi()
	add_child(n)
