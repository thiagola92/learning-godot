extends Node2D

var RB

func _ready():
	RB = $RigidBody2D2.duplicate()


func _on_RB_pressed():
	var clone = RB.duplicate()
	clone.position = $Area2D.position - Vector2(0, 400)
	self.add_child(clone)
	


func _on_RB2_pressed():
	var clone = RB.duplicate()
	clone.position = $StaticBody2D.position - Vector2(0, 400)
	self.add_child(clone)


func _on_RB3_pressed():
	var clone = RB.duplicate()
	clone.position = $KinematicBody2D.position - Vector2(0, 400)
	self.add_child(clone)
