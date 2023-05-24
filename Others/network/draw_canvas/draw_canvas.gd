extends Node2D

const LeftClick = preload("res://network/draw_canvas/left_click.tscn")
const RightClick = preload("res://network/draw_canvas/right_click.tscn")


func _unhandled_input(event):
	if not visible:
		return
	
	if not event is InputEventMouseButton:
		return
	
	# Left click create a rectangle locally and MultiplayerSpawner should ignore
	if event.button_index == 1 and event.pressed:
		add_my_rect(event.position)
	# Right click create a rectangle for everyone
	elif event.button_index == 2 and event.pressed:
		
		# Server should create locally and MultiplayerSpawner should replicate
		if get_multiplayer_authority() == multiplayer.get_unique_id():
			add_shared_rect(event.position)
		# Client should ask server to create and after the server create
		# MultiplayerSpawner will replicate to others
		else:
			add_shared_rect.rpc(event.position)


func add_my_rect(p: Vector2):
	var d: ColorRect = LeftClick.instantiate()
	d.position = Vector2(p)
	add_child(d)


@rpc("any_peer")
func add_shared_rect(p: Vector2):
	var d: ColorRect = RightClick.instantiate()
	d.position = Vector2(p)
	add_child(d, true)
