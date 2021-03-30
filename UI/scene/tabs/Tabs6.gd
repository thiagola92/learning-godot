extends Tabs


func _ready():
	self.add_tab("Close")
	self.add_tab("tabs")
	self.add_tab("is")
	self.add_tab("an")
	self.add_tab("option")


func _on_Tabs6_tab_close(tab):
	print("Trying to close\t", tab)
