extends Label

@onready var area = get_node("placeable area")

func _ready():
    if area != null:
        if area.get("card") == null:
            print("yaaaa")
        print("yes")
        if area.card == null:
            print("hello")


func _process(delta):
    if area != null and area.card != null:
        print("hello")
