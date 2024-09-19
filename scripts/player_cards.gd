extends Node
var card_scene = load("res://scenes/cards.tscn")


func _ready():
	for c in get_children():
		var card = card_scene.instantiate()
		self.add_child(card)
		card.fallback_pos = c.position
		card.position = c.position
		print(c.position)
