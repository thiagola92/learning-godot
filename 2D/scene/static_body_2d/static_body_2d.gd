extends StaticBody2D

const SPEED = 200

@onready var target = $"../A"

func _physics_process(delta):
	var direction: Vector2 = target.position - position
	direction = direction.normalized()
	
	var motion = direction * SPEED * delta
	var collision = move_and_collide(motion)
	
	if collision:
		print(collision.get_collider().name)
