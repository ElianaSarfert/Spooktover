extends Node2D

#Var
var tragstatus: bool = false



@onready var tile_map_layer: TileMapLayer = $TileMapLayer



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if tragstatus:
		var mousePos = get_global_mouse_position()
		


func _on_note_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.
