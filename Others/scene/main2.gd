extends Node2D


func _ready():
	var s: PackedScene = preload("res://scene/main.tscn")
	add_child(s.instantiate())
