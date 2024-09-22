extends Node2D

var card_scene = preload("res://scenes/cards.tscn")

@onready var right = get_node("placeable area")
@onready var left = get_node("placeable area2")
@onready var wp_text = $Label
@onready var lp_text = $Label2
@onready var card_layer: Node2D = %CardLayer

func _ready():
	right.play_sound = true
	#spawn_new_card_left()
	

func _process(delta):
	var points = get_points()
	if points != null:
		wp_text.text = "[center]" + str(points.word_points)
		lp_text.text = "[center]" + str(points.language_points)
	else:
		wp_text.text = ""
		lp_text.text = ""


func get_points():
	if right != null and left != null and right.card != null && left.card != null:
		return right.card.card_info.compare(left.card.card_info)
	return null

func spawn_new_card_left():
	var card = card_scene.instantiate()
	card.moving_to_fallback = true
	card.is_selectable = false
	card_layer.add_child(card)
	card.fallback_pos = left.global_position
	card.position = Vector2(2000, left.global_position.y)
	AlphabetAudioManager.play_word_low(card.card_info.anglishization)
