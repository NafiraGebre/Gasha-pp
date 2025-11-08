extends RigidBody2D

@onready var game_manager: Node = %GameManager
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == null or not body.is_inside_tree():
		return  # Safety check
	if body.name == "CharacterBody2D":
		print("Decrease Player Health")
		game_manager.decrease_health()
