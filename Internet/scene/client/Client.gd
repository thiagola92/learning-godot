extends Node

signal network_peer_connected(id)
signal network_peer_disconnected(id)
signal connected_to_server
signal connection_failed
signal server_disconnected

func _ready():
	pass


func _on_Button_pressed():
	var ip = $LineEdit.text
	var port = int($LineEdit2.text)
	
	var peer = NetworkedMultiplayerENet.new()
	var error = peer.create_client(ip, port)
	
	get_tree().network_peer = peer
	
	if error != 0:
		print("Error: %s" % error)


func _on_Button2_pressed():
	get_tree().network_peer = null


func _on_Node_network_peer_connected(id):
	print("%s Connected" % id)


func _on_Node_network_peer_disconnected(id):
	print("%s Disconnected" % id)


func _on_Node_connected_to_server():
	print("Connected to the server")


func _on_Node_connection_failed():
	print("Fail connecting")


func _on_Node_server_disconnected():
	print("Server disconnected")
