extends Node
@onready var knowledge_panel_1: Panel = $KnowledgePanel1


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	knowledge_panel_1.hide()

func _process(delta: float) -> void:
	var esc_pressed = Input.is_action_just_pressed("pause")
	if (esc_pressed == true):
		get_tree().paused = true
		knowledge_panel_1.show()
	


func _on_resume_pressed() -> void:
	knowledge_panel_1.hide()
	get_tree().paused = false


func _on_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/UI/WelcomeMenu.tscn")
