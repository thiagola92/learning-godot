extends TextEdit


func _ready():
	pass


func _on_TextEdit12_symbol_lookup(symbol, row, column):
	print("---symbol_lookup---")
	print("symbol", symbol)
	print("row", row)
	print("column", column)


func _on_TextEdit12_request_completion():
	print("---request_completion---")


func _on_TextEdit12_text_changed():
	print("---text_changed---")


func _on_TextEdit12_info_clicked(row, info):
	print("---info_clicked---")
	print("info", info)
	print("row", row)


func _on_TextEdit12_cursor_changed():
	print("---cursor_changed---")
	pass


func _on_TextEdit12_breakpoint_toggled(row):
	print("---breakpoint_toggled---")
	print("row", row)
