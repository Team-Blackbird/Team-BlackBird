extends Node
var card_scene = load("res://scenes/cards.tscn")
@onready var card_layer = %CardLayer

func _ready():
	fill_empty()

func fill_empty():
	for c in get_children():
		if c.name.contains("placeable") && c.card == null:
			var card = card_scene.instantiate()
			self.add_child(card)
			card.fallback_pos = c.position
			card.position = Vector2(-1000,500)

func delete_all():
	for c in get_children():
		if c.name.contains("placeable") && c.card != null:
			c.card.queue_free()
			c.card = null
