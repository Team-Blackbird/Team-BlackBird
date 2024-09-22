extends Node2D

var card_info : CardLibrary.CardInfo

@export var is_selectable = true

@onready var is_selected = false
@onready var fallback_pos = position
@onready var moving_to_fallback = false
@onready var tolerence = 0.5
@onready var default_z_index = 1

@onready var word_box = $Sprite2D/Word
@onready var rom_box = $Sprite2D/Romanization
@onready var trans_box = $Sprite2D/Translation

var max_speed = 15

var in_area = null

func _ready():
	z_index = default_z_index
	card_info = CardLibrary.get_random_card()
	word_box.text = "[center]" + card_info.word
	rom_box.text = "[center]" + card_info.romanization
	trans_box.text = "[center]" + card_info.translation()

# set card to mouse pos
func _physics_process(delta):
	if !Input.is_mouse_button_pressed( 1 ): # Left click
		deselect()
	
	if moving_to_fallback:
		if position.distance_to(fallback_pos) < tolerence:
			moving_to_fallback = false
		else:
			position = lerp(position, fallback_pos, max_speed * delta)

	else:
		if is_selected:
			z_index = 10
			position = lerp(position, get_global_mouse_position(), max_speed * delta )
			if in_area != null:
				in_area.card = null
				in_area = null

		if in_area == null and $Area2D.has_overlapping_areas() and not is_selected:
			for over_area in $Area2D.get_overlapping_areas():
				if over_area.get("is_placeable_area"):
					if over_area.is_placeable_area and over_area.card == null:
						in_area = over_area
						in_area.card = self
						fallback_pos = over_area.global_position
						break
			moving_to_fallback = true

		if not $Area2D.has_overlapping_areas() and not is_selected:
			moving_to_fallback = true
		
		#if not is_selected and not $Area2D.has_overlapping_areas():
			#is_selected = false

func move_to(new_pos : Vector2):
	if is_selected:
		return
	fallback_pos = new_pos
	moving_to_fallback = true

func select():
	is_selected = is_selectable
	#if is_selected:
		#AlphabetAudioManager.play_word_high(card_info.anglishization, true)
	
func deselect():
	z_index = default_z_index
	is_selected = false

func _on_area_2d_input_event(viewport, event, shape_idx):
	if not is_selected and event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		select()

func _input(event):
	if is_selected and event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and not event.pressed:
		deselect()
