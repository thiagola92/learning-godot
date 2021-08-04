extends VBoxContainer


func _ready():
	pass


remote func remote_button():
	$Historic/Senders/RemoteSender.text = "    (%s)" % get_tree().get_rpc_sender_id()
	$Historic/Methods/RemoteLabel.set("custom_colors/font_color", Color("ffee00"))
	$Historic/Methods/RemoteTimer.wait_time = 0.5
	$Historic/Methods/RemoteTimer.start()


master func master_button():
	$Historic/Senders/MasterSender.text = "    (%s)" % get_tree().get_rpc_sender_id()
	$Historic/Methods/MasterLabel.set("custom_colors/font_color", Color("ffee00"))
	$Historic/Methods/MasterTimer.wait_time = 0.5
	$Historic/Methods/MasterTimer.start()


puppet func puppet_button():
	$Historic/Senders/PuppetSender.text = "    (%s)" % get_tree().get_rpc_sender_id()
	$Historic/Methods/PuppetLabel.set("custom_colors/font_color", Color("ffee00"))
	$Historic/Methods/PuppetTimer.wait_time = 0.5
	$Historic/Methods/PuppetTimer.start()


func _on_RemoteTimer_timeout():
	$Historic/Methods/RemoteLabel.set("custom_colors/font_color", Color("ffffff"))


func _on_MasterTimer_timeout():
	$Historic/Methods/MasterLabel.set("custom_colors/font_color", Color("ffffff"))


func _on_PuppetTimer_timeout():
	$Historic/Methods/PuppetLabel.set("custom_colors/font_color", Color("ffffff"))
