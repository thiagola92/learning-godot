extends Tabs


func _ready():
	self.add_tab("You")
	self.add_tab("can")
	self.add_tab("change")
	self.add_tab("order")
	self.add_tab("by")
	self.add_tab("draging")
	self.add_tab("the")
	self.add_tab("tabs")


func _on_Tabs5_reposition_active_tab_request(idx_to):
	print("Moving curent tab to\t", idx_to)
