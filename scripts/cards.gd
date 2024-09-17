extends Sprite2D

@onready var is_selected = false
@onready var fallback_pos = position
@onready var moving_to_fallback = false
@onready var tolerence = 0.5
@onready var default_z_index = 1

var in_area = null

func _ready():
	z_index = default_z_index

# set card to mouse pos
func _physics_process(delta):
	if !Input.is_mouse_button_pressed( 1 ): # Left click
		deselect()
	
	if moving_to_fallback:
		if position.distance_to(fallback_pos) < tolerence:
			print("yes")
			moving_to_fallback = false
		else:
			position = lerp(position, fallback_pos, 25 * delta)
			print("no")

	else:
		if is_selected:
			z_index = 10
			position = lerp(position, get_global_mouse_position(), 25 * delta )
			if in_area != null:
				in_area.card = null
				in_area = null

		if in_area == null and $Area2D.has_overlapping_areas() and not is_selected:
			var over_area = $Area2D.get_overlapping_areas()[0]
			if over_area.get("is_placeable_area"):
				if over_area.is_placeable_area and over_area.card == null:
					in_area = over_area
					in_area.card = self
					fallback_pos = over_area.global_position
			moving_to_fallback = true

		if not $Area2D.has_overlapping_areas() and not is_selected:
			moving_to_fallback = true
		
		#if not is_selected and not $Area2D.has_overlapping_areas():
			#is_selected = false

func select():
	is_selected = true
	
func deselect():
	z_index = default_z_index
	is_selected = false

func _on_area_2d_input_event(viewport, event, shape_idx):
	if not is_selected and event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		select()

func _input(event):
	if is_selected and event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and not event.pressed:
		deselect()
