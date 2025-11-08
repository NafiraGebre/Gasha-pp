extends Area2D

@onready var game_manager: Node = %GameManager
@onready var coin_sound: AudioStreamPlayer2D = %CoinSound


#func _on_body_entered(body: Node2D) -> void:
	#if body.name == "CharacterBody2D":
		#coin_sound.play()  # play the sound
		#game_manager.add_point()
		#queue_free()
func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		coin_sound.play()
		game_manager.add_point()
		
		# Delay only the queue_free part (run it asynchronously)
		await get_tree().create_timer(0.2).timeout
		queue_free()
