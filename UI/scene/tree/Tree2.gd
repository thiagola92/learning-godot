extends Tree


func _ready():
	var root = self.create_item()
	root.set_text(0, "root")
	
	var first = self.create_item(root)
	first.set_text(0, "first")
	
	var second = self.create_item(first)
	second.set_text(0, "second")
	
	var third = self.create_item(root)
	third.set_text(0, "third")


func get_drag_data(position):
	print("get_drag_data")
	print(position)
	
	return get_selected()


func can_drop_data(position, data):
	print("can_drop_data")
	print(position)
	print(data)


func drop_data(position, data):
	print("drop_data")
	print(position)
	print(data)
