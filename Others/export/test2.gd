extends Node2D


@export var test: String = "one":
	set(value):
		test = value
		print("Setting: ", test)

func _init():
	test = "three"
	self.test = "four"

func _ready():
	test = "five"
	self.test = "six"
