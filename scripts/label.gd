extends Label

@onready var right = get_node("placeable area")
@onready var left = get_node("placeable area2")

# func _ready():
#     if area != null:
#         if area.get("card") == null:
#             print("yaaaa")
#         print("yes")
#         if area.card == null:
#             print("hello")
#

func _process(delta):
	if right != null and left != null:
		if right.card != null and left.card != null:
			var points =right.card.card_info.compare(left.card.card_info)
			self.text = "WP: " + str(points.word_points) + "\n" + "LP: " + str(points.language_points) 
		else:
			self.text = ""
