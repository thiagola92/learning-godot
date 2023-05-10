extends CharacterBody2D


var speed = 200


func _physics_process(delta):
	move()


func move():
	var x_axis = Input.get_axis("ui_left", "ui_right")
	var y_axis = Input.get_axis("ui_up", "ui_down")
	var direction = Vector2(x_axis, y_axis)
	
	velocity = direction * speed
	
	move_and_slide()
