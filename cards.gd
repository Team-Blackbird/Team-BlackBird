extends Sprite2D

#func _physics_process(delta):
func _ready():

    print("ready")

func _process(delta):

    global_position = get_global_mouse_position()
    print(get_global_mouse_position())

