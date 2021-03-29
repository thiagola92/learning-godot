extends OptionButton


func _ready():
	self.add_item("First")
	self.add_item("Second")
	self.add_item("Third")



func _on_OptionButton_item_selected(index):
	print("selected index: ", index, "\t", self.get_item_text(index))


func _on_OptionButton_item_focused(index):
	# use arrows to see this
	print("focus index: ", index, "\t", self.get_item_text(index))
