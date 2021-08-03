extends Control

var Player = preload("res://scene/rpc_example/Player.tscn")

var ip = "127.0.0.1"
var port = 1992
var peer = NetworkedMultiplayerENet.new()
var players = {}


func _ready():
	get_tree().connect("network_peer_connected", self, "_on_network_peer_connected")
	_make_connection()
	_on_network_peer_connected(
		get_tree().get_network_unique_id()
	)


# Try be a server, otherwise be a client
func _make_connection():
	if peer.create_server(port) != OK:
		peer.create_client(ip, port)
	get_tree().network_peer = peer


func _on_network_peer_connected(id : int):
	players[id] = Player.instance()
	players[id].name = str(id)
	players[id].set_network_master(id)
	add_child(players[id])


func _on_Button1_pressed():
	for p in players:
		players[p].rpc('button1')


func _on_Button2_pressed():
	for p in players:
		players[p].rpc('button2')


func _on_Button3_pressed():
	for p in players:
		players[p].rpc('button3')
