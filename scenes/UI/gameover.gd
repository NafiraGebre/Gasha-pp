extends Node


func _on_restart_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level5.tscn")


func _on_gotohome_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/UI/WelcomeMenu.tscn")
