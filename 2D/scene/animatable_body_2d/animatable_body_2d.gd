extends AnimatableBody2D

const SPEED = 200

@onready var target = $"../A"


func _ready():
	$AnimationPlayer.play("new_animation")

func _physics_process(delta):
	pass
