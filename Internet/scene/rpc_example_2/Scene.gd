extends Control

const Player = preload("res://scene/rpc_example_2/Player.tscn")

var port = 1992
var peer = NetworkedMultiplayerENet.new()

var players = {}


func _ready():
	get_tree().connect("network_peer_connected", self, "_add_child")


func _make_connection():
	var ip = $Left/IP.text
	
	# Try connect to a server, otherwise try be a server
	if peer.create_client(ip, port) != OK:
		if peer.create_server(port) != OK:
			$Left/Status.text = "FAIL"
	
	get_tree().network_peer = peer
	_add_child(
		get_tree().get_network_unique_id()
	)


func _add_child(id : int):
	players[id] = Player.instance()
	players[id].name = str(id)
	players[id].get_node("Id").text = str(id)
	players[id].set_network_master(id)
	$Right.add_child(players[id])


func _on_Remote_pressed():
	var id = int($Left/Id.text)
	
	if id in players:
		players[id].rpc("remote_button")


func _on_Master_pressed():
	var id = int($Left/Id.text)
	
	if id in players:
		players[id].rpc("master_button")


func _on_Puppet_pressed():
	var id = int($Left/Id.text)
	
	if id in players:
		players[id].rpc("puppet_button")
