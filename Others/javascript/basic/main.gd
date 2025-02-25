extends Control


func _ready():
	# It's like getting the JavaScript object (but it's just a wrapper).
	var console = JavaScriptBridge.get_interface("console")
	console.log("test")
	
	# Almost same as making "var array = new Array()" in JavaScript,
	# but in this case is just a wrapper made to work close to how JavaScript works.
	var array = JavaScriptBridge.create_object("Array")
	array[0] = 40
	print(array) # note that this will be printed in console too.
