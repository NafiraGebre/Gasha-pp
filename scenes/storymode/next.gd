extends Button

func _ready() -> void:
	# Connect the pressed signal if not connected in the editor
	connect("pressed", Callable(self, "_on_pressed"))

func _on_pressed() -> void:
	# Change to another scene
	get_tree().change_scene_to_file("res://scenes/storymode/storyp2.tscn")
