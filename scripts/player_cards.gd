extends Node
var card_scene = load("res://scenes/cards.tscn")
@onready var card_layer = %CardLayer

func _ready():
	for c in get_children():
		if c.name.contains("placeable"):
			var card = card_scene.instantiate()
			self.add_child(card)
			card.fallback_pos = c.position
			card.position = c.position
			print(c.position)
