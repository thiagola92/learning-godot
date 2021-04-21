extends Node

signal network_peer_connected(id)
signal network_peer_disconnected(id)


func _ready():
	pass


func _on_Button_pressed():
	if get_tree().network_peer != null:
		return
	
	var port = int($LineEdit.text)
	
	var peer = NetworkedMultiplayerENet.new()
	var error = peer.create_server(port, 2)
	
	get_tree().network_peer = peer
	
	if error != 0:
		print("Error: %s" % error)


func _on_Button2_pressed():
	get_tree().network_peer = null


func _on_Node_network_peer_connected(id):
	print("%s Connected" % id)


func _on_Node_network_peer_disconnected(id):
	print("%s Disconnected" % id)
