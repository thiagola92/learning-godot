# Same type as the node, so no problem
extends Node2D


func _ready():
	# `position` and `self.position` can even be autocompleted
	print("I'm ready", position, self.position)

