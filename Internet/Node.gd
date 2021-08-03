extends Node

var ip = '127.0.0.1'
var port = 1992
var peer = NetworkedMultiplayerENet.new()

var players = {}


func _ready():
	get_tree().connect("network_peer_connected", self, "_on_network_peer_connected")
	
	_make_connection()
	
	players[get_tree().get_network_unique_id()] = 0


func _on_network_peer_connected(id : int):
	players[id] = 0


# Try be a server, otherwise be a client
func _make_connection():
	if peer.create_server(port) != OK:
		peer.create_client(ip, port)
	
	get_tree().network_peer = peer


func _on_Button_pressed():
	rpc("_increase_connection_points", get_tree().get_network_unique_id())


remotesync func _increase_connection_points(id : int):
	players[id] += 1
	_update_text()


func _update_text():
	$TextEdit.text = ""
	
	for id in players.keys():
		$TextEdit.text += "%s => %s\n" % [id, players[id]]
