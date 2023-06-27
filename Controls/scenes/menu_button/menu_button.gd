extends MenuButton


@onready var menu: PopupMenu = get_popup()


func _ready() -> void:
	add_many_submenus(1)


func add_many_submenus(qty: int) -> void:
	for i in range(qty):
		var submenu: PopupMenu = PopupMenu.new()
		
		menu.add_child(submenu)
		menu.add_submenu_item("example", submenu.name)


func delete_many_submenus(qty: int) -> void:
	for i in range(qty):
		if item_count > 0:
			var submenu_name: String = menu.get_item_submenu(0)
#
#			print(menu.get_child(0).name == submenu_name)
#			print(menu.get_child(0).name.match(submenu_name))
#			print(submenu_name.match(menu.get_child(0).name))
#			print(menu.get_node(submenu_name))
			var n = menu.get_node(submenu_name)
			n.queue_free()
			menu.remove_item(0)


func _on_button_pressed() -> void:
	add_many_submenus(10)


func _on_button_2_pressed() -> void:
	delete_many_submenus(10)
