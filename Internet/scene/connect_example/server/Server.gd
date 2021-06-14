extends Node

signal network_peer_connected(id)
signal network_peer_disconnected(id)


func _ready():
	get_tree().connect("network_peer_connected", self, "_on_Node_network_peer_connected")
	get_tree().connect("network_peer_disconnected", self, "_on_Node_network_peer_disconnected")


func _on_Button_pressed():
	if get_tree().network_peer != null:
		return
	
	var port = int($LineEdit.text)
	var peer = NetworkedMultiplayerENet.new()
	var error = peer.create_server(port, 10)
	
	get_tree().network_peer = peer
	
	if error != 0:
		print("Error: %s" % error)
		return
		
	print("Server created")


func _on_Button2_pressed():
	get_tree().network_peer = null
	print("Server closed")


func _on_Node_network_peer_connected(id):
	print("%s Connected" % id)


func _on_Node_network_peer_disconnected(id):
	print("%s Disconnected" % id)
