extends Button
@onready var knowledge_panel_1: Panel = $".."


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_parent().show()

	


func _on_pressed() -> void:
	get_parent().hide()
