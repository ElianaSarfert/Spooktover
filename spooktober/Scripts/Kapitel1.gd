extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("MainCharacterCabin")
	Dialogic.timeline_ended.connect(_on_timeline_ended)
	Dialogic.signal_event.connect(_on_signal)

func _on_timeline_ended():
	get_tree().change_scene_to_file("res://Scenes/kapitel_2.tscn")

func _on_signal(_signal_passed_in):
	match _signal_passed_in:
		"_on_view_notes":
			get_tree().change_scene_to_file("res://Scenes/mini_game_1.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
