extends VBoxContainer

var ip = '127.0.0.1'
var port = 1992
var peer = NetworkedMultiplayerENet.new()


func _ready():
	var error = peer.create_server(port)
	
	if error != OK:
		error = peer.create_client(ip, port)
	
	$TextEdit.text = 'peer created'
	
	get_tree().network_peer = peer
	get_tree().connect("connected_to_server", self, "_on_connected_to_server")
	get_tree().connect("network_peer_connected", self, "_on_network_peer_connected")


remotesync func add_message(msg):
	var id = get_tree().get_rpc_sender_id()
	$TextEdit.text += '\n%s: %s' % [id, msg]


func _on_connected_to_server():
	$TextEdit.text += '\nconnected to the server'


func _on_network_peer_connected(id):
	$TextEdit.text += '\nid %s connected' % id


func _on_Button_pressed():
	var msg = $HBoxContainer/LineEdit.text
	rpc("add_message", msg)
