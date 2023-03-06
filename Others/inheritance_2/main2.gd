# Parent from Node2D
extends Node


func _ready():
	# position is not defined in the script or parent so an error message occurss
	# print("I'm ready, position)
	
	# `self` look for the dynamically look for properties so no error here
	print("I'm ready", self.position)
