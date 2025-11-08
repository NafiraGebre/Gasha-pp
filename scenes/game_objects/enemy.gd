extends RigidBody2D

@onready var game_manager: Node = %GameManager
@onready var destroy_sound: AudioStreamPlayer2D = $DestroySound
@onready var damage_sound: AudioStreamPlayer2D = $DamageSound

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == null or not body.is_inside_tree():
		return  # Safety check

	if body.name == "CharacterBody2D":
		var y_delta = position.y - body.position.y
		var x_delta = body.position.x - position.x

		if y_delta > 60:
			print("Destroy enemy")
			if destroy_sound:
				destroy_sound.play()
			if body.has_method("jump"):
				body.jump()

			# Wait for sound to finish before removing enemy
			await get_tree().create_timer(0.3).timeout
			if is_inside_tree():  # Ensure still valid
				queue_free()

		else:
			print("Decrease Player Health")
			if damage_sound:
				damage_sound.play()

			if game_manager and game_manager.has_method("decrease_health"):
				game_manager.decrease_health()

			if body.has_method("jump_side"):
				if x_delta > 0:
					body.jump_side(500)
				else:
					body.jump_side(-500)
