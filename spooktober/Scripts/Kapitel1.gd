extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("testtimeline1")
	Dialogic.signal_event.connect(_on_signal)
	Dialogic.timeline_ended.connect(_on_timeline_ended)


func _on_timeline_ended():
	get_tree().change_scene_to_file("res://Scenes/kapitel_2.tscn")


func _on_signal(input_signal):
	match input_signal:
		"go_to_next": 
			print("Hello there")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
