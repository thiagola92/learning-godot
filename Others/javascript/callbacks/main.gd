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


# Godot always give you "args", this is an Object that is always
# present in JavaScript functions (but is not showed in JavaScript).
# https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments
# It contains all arguments passed to the function.
# NOTE: My recommendation is not using Typing while dealing with JavaScript,
# Godot can't deduce types and will complain even about things that JavaScriptObject
# would be able to process (like "args[0]").
func _on_click(args):
	var console = JavaScriptBridge.get_interface("console")
	console.log("Don't click me")
	console.log(args)
	
	# TIP: use eval to better read javascript.
	JavaScriptBridge.eval("console.log(arguments)")
