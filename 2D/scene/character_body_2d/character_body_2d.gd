extends CharacterBody2D

const SPEED = 200

@onready var target = $"../A"

func _physics_process(delta):
	var direction: Vector2 = target.position - position
	direction = direction.normalized()
	
	velocity = direction * SPEED
	
	if move_and_slide():
		var collision = get_slide_collision(0)
		print(collision.get_collider().name)
