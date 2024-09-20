extends Label

var card_scene = preload("res://scenes/cards.tscn")

@onready var right = get_node("placeable area")
@onready var left = get_node("placeable area2")
@onready var card_layer: Node2D = %CardLayer

func _ready():
	var card = card_scene.instantiate()
	card.global_position = left.global_position
	card.is_selectable = false
	card_layer.add_child(card)
	

func _process(delta):
	var points = get_points()
	if points != null:
		self.text = "WP: " + str(points.word_points) + "\n" + "LP: " + str(points.language_points) 
	else:
		self.text = ""


func get_points():
	if right != null and left != null and right.card != null && left.card != null:
		return right.card.card_info.compare(left.card.card_info)
	return null
