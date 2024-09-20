extends Node2D

@onready var label1 = $Label
@onready var label2 = $Label2
@onready var label3 = $Label3
@onready var label4 = $Label4
@onready var label5 = $Label5
@onready var final_label = $FinalLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var points1 = label1.get_points()
	var points2 = label2.get_points()
	var points3 = label3.get_points()
	var points4 = label4.get_points()
	var points5 = label5.get_points()
	var points_sum = CardLibrary.PointPair.new(0,0)
	if points1 != null and points2 != null and points3 != null and points4 != null and points5 != null:
		points_sum = points_sum.add(points1).add(points2).add(points3).add(points4).add(points5)
		final_label.text = "WP: " + str(points_sum.word_points) + "\n" + "LP: " + str(points_sum.language_points)
	else:
		final_label.text = ""
