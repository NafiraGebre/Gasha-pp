extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		var current_scene = get_tree().current_scene.scene_file_path

		match current_scene:
			"res://scenes/levels/level5.tscn":
				get_tree().change_scene_to_file("res://scenes/question/level1Q.tscn")
			"res://scenes/levels/level2.tscn":
				get_tree().change_scene_to_file("res://scenes/levels/level3.tscn")
			_:
				get_tree().change_scene_to_file("res://scenes/UI/congratulations.tscn")
 
