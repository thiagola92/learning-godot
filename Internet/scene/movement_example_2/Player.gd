extends ColorRect


func _physics_process(delta):
	if get_tree().get_network_unique_id() == int(name):
		_read_input()


func generate_color(rng : RandomNumberGenerator):
	color = Color(
		rng.randf_range(0, 1),
		rng.randf_range(0, 1),
		rng.randf_range(0, 1),
		1
	)


func update_position(position):
	rect_position = position


func _read_input():
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("move_right"):
		direction.x += 5
	if Input.is_action_pressed("move_left"):
		direction.x -= 5
	if Input.is_action_pressed("move_down"):
		direction.y += 5
	if Input.is_action_pressed("move_up"):
		direction.y -= 5

	if direction != Vector2.ZERO:
		rpc("_move", direction)


puppetsync func _move(direction):
	rect_position += direction
