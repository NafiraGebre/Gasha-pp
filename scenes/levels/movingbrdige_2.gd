extends Node2D

# Movement parameters
var speed: float = 200.0 # pixels per second
var direction: int = 1   # 1 = right, -1 = left
var left_limit: float = 100.0  # X position for left boundary
var right_limit: float = 500.0 # X position for right boundary

func _process(delta: float) -> void:
	# Move the bridge horizontally
	position.x += speed * direction * delta

	# Reverse direction if limits are reached
	if position.x >= right_limit:
		direction = -1
	elif position.x <= left_limit:
		direction = 1
