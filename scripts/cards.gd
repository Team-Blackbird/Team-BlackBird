extends Sprite2D

@onready var is_selected = false
@onready var fallback_pos = position
@onready var moving_to_fallback = false
@onready var tolerence = 0.5


# set card to mouse pos
func _physics_process(delta):
    if moving_to_fallback:
        if position.distance_to(fallback_pos) < tolerence:
            print("yes")
            moving_to_fallback = false
        else:
            position = lerp(position, fallback_pos, 25 * delta)
            print("no")

    else:
        if is_selected:
            position = lerp(position, get_global_mouse_position(), 25 * delta )
        if $Area2D.has_overlapping_areas() and not is_selected:
            var over_area = $Area2D.get_overlapping_areas()[0]
            if over_area.get("is_placeable_area"):
                if over_area.is_placeable_area:
                    fallback_pos = over_area.global_position
                    position = lerp(position, over_area.global_position, 25 * delta)
        if not $Area2D.has_overlapping_areas() and not is_selected:
            moving_to_fallback = true
        
        if not is_selected and not $Area2D.has_overlapping_areas():
            is_selected = false

func _on_area_2d_input_event(viewport, event, shape_idx):
    if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
        is_selected = true

func _input(event):
    if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and not event.pressed:
        is_selected = false
