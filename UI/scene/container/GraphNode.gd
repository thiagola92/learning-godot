extends GraphNode


func _ready():
	pass


func _on_GraphNode_close_request():
	self.queue_free()


func _on_GraphNode_resize_request(new_minsize):
	self.rect_size = new_minsize
