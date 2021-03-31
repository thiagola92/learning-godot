extends Node2D


func _ready():
	pass


func _on_Button_pressed():
	var clone = $GraphNode.duplicate()
	clone.title = "But using here you can do much more"
	
	$GraphEdit.add_child(clone)
