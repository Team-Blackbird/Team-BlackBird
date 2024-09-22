extends Node2D

@onready var animation_player: AnimationPlayer = $AudioStreamPlayer/AnimationPlayer
var playing_slow = false

func slow_down():
	if !playing_slow:
		animation_player.play("slow")

func speed_up():
	if playing_slow:
		animation_player.play("speed")
