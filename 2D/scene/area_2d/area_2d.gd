extends Area2D

const SPEED = 200

@onready var target = $"../A"

var hit = false

func _physics_process(delta):
	if not hit:
		var direction: Vector2 = target.position - position
		direction = direction.normalized()
		
		var velocity = direction * SPEED * delta
		position += velocity


func _on_body_entered(body):
	hit = true
	print(body.name)
