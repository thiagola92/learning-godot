extends Tree


func _ready():
	self.set_column_title(0, "Column 0")
	self.set_column_titles_visible(true)
	
	var root = self.create_item()
	root.set_text(0, "root")
	
	var first = self.create_item(root)
	first.set_text(0, "first")
	
	var second = self.create_item(first)
	second.set_text(0, "second")
	
	var tooltip = self.create_item(root)
	tooltip.set_text(0, "have tooltip")
	tooltip.set_tooltip(0, "hi, i am a tooltip")
	
	var editable = self.create_item(root)
	editable.set_text(0, "editable")
	editable.set_editable(0, true)
	
	var not_selectable = self.create_item(root)
	not_selectable.set_text(0, "not selectable")
	not_selectable.set_selectable(0, false)
	
	var _range = self.create_item(root)
	_range.set_text(0, "range")
	_range.set_range(0, 50)
	
	# fail
	var texture = load("res://scene/tree/Icon.tscn").instance()
	var button = self.create_item(root)
	button.set_button(0, 0, texture)
	button.add_button(0, texture)
	button.set_text(0, "button")
