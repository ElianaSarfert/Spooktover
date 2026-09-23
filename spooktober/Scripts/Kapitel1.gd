extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("MainCharacterCabin")
	Dialogic.timeline_ended.connect(_on_timeline_ended)


func _on_timeline_ended():
	get_tree().change_scene_to_file("res://Scenes/kapitel_2.tscn")





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
