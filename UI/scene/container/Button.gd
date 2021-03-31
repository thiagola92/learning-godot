extends Button


func _ready():
	self.text = "Button" + self.name.split('n')[1]
