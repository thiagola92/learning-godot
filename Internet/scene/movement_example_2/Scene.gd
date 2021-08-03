extends Node

var Player = preload("res://scene/movement_example_2/Player.tscn")
var rng = RandomNumberGenerator.new()

var ip = '127.0.0.1'
var port = 1992
var peer = NetworkedMultiplayerENet.new()

var players = {}


func _ready():
	get_tree().connect("network_peer_connected", self, "_on_network_peer_connected")
	
	if peer.create_server(port) != OK:
		peer.create_client(ip, port)
	
	get_tree().network_peer = peer
	
	_add_player(get_tree().get_network_unique_id())


func _add_player(id : int):
	if players.get(id) != null:
		return
	
	players[id] = Player.instance()
	players[id].generate_color(rng)
	players[id].name = String(id)
	players[id].set_network_master(id)
	add_child(players[id])


func _on_network_peer_connected(id : int):
	var my_id = get_tree().get_network_unique_id()
	_add_player(id)
	rpc_id(id, "_update_player", players[my_id].rect_position)


remote func _update_player(position):
	var id = get_tree().get_rpc_sender_id()
	_add_player(id)
	players[id].update_position(position)
