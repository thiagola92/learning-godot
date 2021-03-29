extends ItemList



func _on_ItemList_item_selected(index):
	print(index, '\t', self.get_item_text(index))
