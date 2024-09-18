extends Node

var card_scene = preload("res://scenes/cards.tscn")

func _ready():
    for c in get_children():
        # var card = card_scene.instance()
        # card.position = c.position
        print(c.position)
