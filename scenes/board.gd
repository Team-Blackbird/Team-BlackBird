extends Node2D

@onready var label1 = $Label
@onready var label2 = $Label2
@onready var label3 = $Label3
@onready var label4 = $Label4
@onready var label5 = $Label5
@onready var final_label = $FinalLabel
@onready var final_label2 = $FinalLabel2
@onready var button: Button = $Button

var points = 50
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	final_label.text = ""
	final_label2.text = str(points)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var points1 = label1.get_points()
	var points2 = label2.get_points()
	var points3 = label3.get_points()
	var points4 = label4.get_points()
	var points5 = label5.get_points()
	if points1 != null and points2 != null and points3 != null and points4 != null and points5 != null:
		button.disabled = false
	else:
		button.disabled = true

func _on_button_pressed() -> void:
	button.disabled = true
	var points1 = label1.get_points()
	var points2 = label2.get_points()
	var points3 = label3.get_points()
	var points4 = label4.get_points()
	var points5 = label5.get_points()
	var points_sum = CardLibrary.PointPair.new(0,0)
	points_sum = points_sum.add(points1).add(points2).add(points3).add(points4).add(points5)
	final_label.text = str(points_sum.word_points) + " X " + str(points_sum.language_points) + " = " + str(points_sum.calculate())
	clear_board()
	if points_sum.calculate() < points:
		MusicManager.slow_down()
#		show fail state
		return
	await get_tree().create_timer(3).timeout
	points += points
	final_label.text = ""
	final_label2.text = str(points)
	
	
func clear_board():
	label1.right.card.move_to(Vector2(label1.right.card.fallback_pos.x, -200))
	label2.right.card.move_to(Vector2(label2.right.card.fallback_pos.x, -200))
	label3.right.card.move_to(Vector2(label3.right.card.fallback_pos.x, -200))
	label4.right.card.move_to(Vector2(label4.right.card.fallback_pos.x, -200))
	label5.right.card.move_to(Vector2(label5.right.card.fallback_pos.x, -200)) 
	label1.right.card = null
	label2.right.card = null
	label3.right.card = null
	label4.right.card = null
	label5.right.card = null
	label1.left.card.move_to(Vector2(label1.left.card.fallback_pos.x, -200))
	label2.left.card.move_to(Vector2(label2.left.card.fallback_pos.x, -200))
	label3.left.card.move_to(Vector2(label3.left.card.fallback_pos.x, -200))
	label4.left.card.move_to(Vector2(label4.left.card.fallback_pos.x, -200))
	label5.left.card.move_to(Vector2(label5.left.card.fallback_pos.x, -200)) 
	label1.left.card = null
	label2.left.card = null
	label3.left.card = null
	label4.left.card = null
	label5.left.card = null
