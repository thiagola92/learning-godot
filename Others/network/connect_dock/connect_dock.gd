extends HBoxContainer


signal connect(ip: String, port: int)
signal host(port: int)

@onready var ip_input: LineEdit = $IP
@onready var port_input: LineEdit = $Port
@onready var warning: Label = $Warning


func _on_connect_pressed():
	var ip: String = ip_input.text
	var port: String = port_input.text
	
	if not port.is_valid_int():
		warning.text = "Port must be a integer"
		return
	
	warning.text = ""
	
	connect.emit(ip, int(port))


func _on_host_pressed():
	var port: String = port_input.text
	
	if not port.is_valid_int():
		warning.text = "Port must be a integer"
		return
	
	warning.text = ""
	
	host.emit(int(port))
