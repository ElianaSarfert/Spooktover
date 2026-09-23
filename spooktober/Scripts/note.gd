extends Area2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	print("KLick")
