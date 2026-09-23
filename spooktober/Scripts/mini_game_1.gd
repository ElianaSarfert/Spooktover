extends Node2D

#Var
var tragstatus: bool = false



@onready var tile_map_layer: TileMapLayer = $TileMapLayer


@onready var note_1: Area2D = $Note
@onready var note_2: Area2D = $Note2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if tragstatus:
		var mousePos = get_global_mouse_position()
		note_1.global_position = mousePos
	if Input.is_action_just_released("klick"):
		if tragstatus:
			tragstatus = false
		else:
			return

func _on_note_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
		if event.is_action_pressed("klick"):
			tragstatus = true
			
			
