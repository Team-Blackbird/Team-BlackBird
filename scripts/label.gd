extends Node2D

var card_scene = preload("res://scenes/cards.tscn")

@onready var right = get_node("placeable area")
@onready var left = get_node("placeable area2")
@onready var wp_text = $Label
@onready var lp_text = $Label2
@onready var card_layer: Node2D = %CardLayer

func _ready():
	var card = card_scene.instantiate()
	card.global_position = left.global_position
	card.is_selectable = false
	card_layer.add_child(card)
	

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
