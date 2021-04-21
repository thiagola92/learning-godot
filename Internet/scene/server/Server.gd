extends Node

signal network_peer_connected(id)
signal network_peer_disconnected(id)


func _ready():
	pass


func _on_Button_pressed():
	if get_tree().network_peer != null:
		return
	
	var peer = NetworkedMultiplayerENet.new()
	var port = int($LineEdit.text)
	
	peer.create_server(port, 2)
	get_tree().network_peer = peer
	
	if get_tree().network_peer == null:
		print("Invalid port")
	else:
		print("Waiting for connection on %s" % port)


func _on_Button2_pressed():
	if get_tree().network_peer != null:
		get_tree().network_peer = null
		print("Server closed")


func _on_Node_network_peer_connected(id):
	print("%s Connected" % id)


func _on_Node_network_peer_disconnected(id):
	print("%s Disconnected" % id)
