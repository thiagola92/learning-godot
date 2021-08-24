extends Sprite


func _ready():
	pass


func _physics_process(delta):
	var mov = Vector2(0, 0)
	
	if Input.is_action_pressed("ui_down"):
		mov.y += 3
	if Input.is_action_pressed("ui_up"):
		mov.y -= 3
	if Input.is_action_pressed("ui_left"):
		mov.x -= 3
	if Input.is_action_pressed("ui_right"):
		mov.x += 3
	
	position += mov
