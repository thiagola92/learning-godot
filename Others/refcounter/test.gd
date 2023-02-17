extends Node2D

var Third = load("res://refcounter/third/third.gd")
var Fourth = load("res://refcounter/fourth/fourth.gd")
var list = []


func _ready():
	pass
	


func _process(delta):
	var t = Fourth.new()
	# Right when is initializating, "Fourth.new()" will have one reference,
	# when you store in a variable with "t = Fourth.new()" it will become two references
	# But soon or later it will clear the first used while initializating
	print(t.get_reference_count())
	print(t.get_reference_count())
	print(t.get_reference_count())
	print("================")
	var x = t
	print(t.get_reference_count())
	print(t.get_reference_count())
	print(t.get_reference_count())
	print("================")
	
