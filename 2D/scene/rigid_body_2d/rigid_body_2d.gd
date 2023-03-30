extends RigidBody2D

const SPEED = 100

@onready var target = $"../A"

var hit = false

func _physics_process(delta):
	if not hit:
		var direction: Vector2 = target.position - position
		direction = direction.normalized()
		
		constant_force = direction * SPEED


func _on_body_entered(body):
	constant_force = Vector2.ZERO
	hit = true
