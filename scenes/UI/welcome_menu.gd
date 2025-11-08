extends Node


#func _on_level_1_pressed() -> void:
	#get_tree().change_scene_to_file("res://scenes/levels/level1.tscn")
#
#
#func _on_level_2_pressed() -> void:
	#get_tree().change_scene_to_file("res://scenes/levels/level2.tscn")
#

func _on_newgamebtn_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/storymode/storyp1.tscn")


func _on_howtoplay_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/UI/Howtoplay.tscn")


func _on_aboutgroup_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/UI/aboutgroup.tscn")
