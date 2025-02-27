extends Control


var document

var input

var _on_change_ref = JavaScriptBridge.create_callback(_on_change)


func _ready() -> void:
	document = JavaScriptBridge.get_interface("document")
	printt("document", document)
	
	input = document.createElement("input")
	input.type = "file"
	input.onchange = _on_change_ref
	printt("input", input)


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			print("click")
			input.click()


# I'm sad to say that the best way to learn anything about JavaScript on the Web
# is using JavaScript on the Web... Godot gives you objects to simulate JavaScript
# but is very hard to know the types of variables or their properties just by
# executing Godot code. Everything is wrapped around JavaScriptObject and
# there is no way Godot knows details about JavaScript, it will just trust you
# when you access properties or methods. 
# NOTE: Primitive types can be printed but knowing that is a primitive type is hard
# (String, Number, ...).
# INFO: To learn about what you can do, just create a HTML file and test in you browser.
# In this case you can find a "file.html" showing my test before writing this.
func _on_change(args) -> void:
	print("_on_change")
	JavaScriptBridge.eval("console.log(arguments)")
	
	var event = args[0]
	var files = event.target.files
	var file = files[0]
	file.arrayBuffer().then(_on_array_buffer_ref)


var _on_array_buffer_ref = JavaScriptBridge.create_callback(_on_array_buffer)


func _on_array_buffer(args) -> void:
	print("_on_array_buffer")
	JavaScriptBridge.eval("console.log(arguments)")
