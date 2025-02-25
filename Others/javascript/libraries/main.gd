extends Control


func _ready() -> void:
	var window = JavaScriptBridge.get_interface("window")
	window.example()
