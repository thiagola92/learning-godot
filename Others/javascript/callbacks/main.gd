extends Control


# This will create a function in javascript that the only usage
# is call a Godot function.
var callback_ref = JavaScriptBridge.create_callback(_on_click)


func _ready() -> void:
	printt("Reference to callback", callback_ref)
	
	var window = JavaScriptBridge.get_interface("window")
	window.onclick = callback_ref
	
	# We CAN'T do this because Garbage Collector would
	# think that nobody is using the function and clean it.
	# window.onclick = JavaScriptBridge.create_callback(_on_click)


func _on_click(args):
	var console = JavaScriptBridge.get_interface("console")
	console.log("Don't click me")
