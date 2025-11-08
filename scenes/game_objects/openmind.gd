extends Area2D

@onready var game_manager: Node = %GameManager
@onready var coin_sound: AudioStreamPlayer2D = %CoinSound
@onready var knowledge_panel_1: Panel = $"../UI/KnowledgePanel1"


#func _on_body_entered(body: Node2D) -> void:
	#if body.name == "CharacterBody2D":
		#coin_sound.play()  # play the sound
		#game_manager.add_point()
		#queue_free()
func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		#knowledge_panel_1.pause_mode = Node.PAUSE_MODE_PROCESS
		coin_sound.play()
		game_manager.add_point()
		knowledge_panel_1.show()
		get_tree().paused = true
		# Delay only the queue_free part (run it asynchronously)
		#await get_tree().create_timer(0.2).timeout
		hide()
		


func _on_gotitbtn_pressed() -> void:
	knowledge_panel_1.hide()
	get_tree().paused = false
	queue_free()
