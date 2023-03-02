# If need an "export const var" (which doesn't exist), use a conditional
# setter for a tool script that checks if it's executing in the editor.
@tool # Must place at top of file.
extends Node2D

const path = "res://export/my_scene.tscn"

var preres = preload(path) # Load resource during scene load
var res = load(path) # Load resource when program reaches statement

# Note that users load scenes and scripts, by convention, with PascalCase
# names (like typenames), often into constants.
const MyScene := preload("my_scene.tscn") as PackedScene # Static load
const MyScript: Script = preload("my_script.gd")

# This type's value varies, i.e. it is a variable, so it uses snake_case.
@export var script_type: Script

# Must configure from the editor, defaults to null.
#@export var const_script: Script:
#	set = set_const_script
#func set_const_script(value):
#	if Engine.is_editor_hint():
#		const_script = value
		
@export var const_script: Script:
	set(value):
		if Engine.is_editor_hint():
			const_script = value

# Warn users if the value hasn't been set.
func _get_configuration_warning():
	if not const_script:
		return "Must initialize property 'const_script'."
	return ""
