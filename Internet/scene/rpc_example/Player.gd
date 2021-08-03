extends Node


func _ready():
	pass


remote func button1():
	print('------------button 1 pressed------------')
	print('Peer: %s' % get_tree().get_network_unique_id())
	print('Node: %s' % name)
	print('RPC sender: %s' % get_tree().get_rpc_sender_id())


master func button2():
	print('------------button 2 pressed------------')
	print('Peer: %s' % get_tree().get_network_unique_id())
	print('Node: %s' % name)
	print('RPC sender: %s' % get_tree().get_rpc_sender_id())


puppet func button3():
	print('------------button 3 pressed------------')
	print('Peer: %s' % get_tree().get_network_unique_id())
	print('Node: %s' % name)
	print('RPC sender: %s' % get_tree().get_rpc_sender_id())
