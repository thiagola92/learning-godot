extends Node


func start_game():
	$Id.text = str(multiplayer.get_unique_id())
	$ConnectDock.hide()
	$DrawCanvas.show()


func setup_network(peer: ENetMultiplayerPeer):
	if peer.get_connection_status() == MultiplayerPeer.CONNECTION_DISCONNECTED:
		OS.alert("Fail creating server")
		return
	
	multiplayer.multiplayer_peer = peer
	
	start_game()

 
func _on_connect_dock_connect(ip, port):
	var peer: ENetMultiplayerPeer = ENetMultiplayerPeer.new()
	peer.create_client(ip, port) # Only difference between server and client setup
	setup_network(peer)


func _on_connect_dock_host(port: int):
	var peer: ENetMultiplayerPeer = ENetMultiplayerPeer.new()
	peer.create_server(port) # Only difference between server and client setup
	setup_network(peer)
	
	# Whenever a new peer connect, it will update the connection count label.
	# MultiplayerSynchronizer is watching the text property
	# and should update the others peers.
	peer.peer_connected.connect(
		func(_id: int):
			$ConnCount.text = str(int($ConnCount.text) + 1)
	)
