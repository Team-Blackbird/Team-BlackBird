extends Sprite2D

var is_selected = false
# set card to mouse pos
func _physics_process(delta):
	if is_selected:
		global_position = lerp(global_position, get_global_mouse_position(), 25 * delta )

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		is_selected = true

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and not event.pressed:
		is_selected = false
