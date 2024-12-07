extends Node2D

@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer
@onready var animation_player: AnimationPlayer = $AudioStreamPlayer/AnimationPlayer
var playing_slow = false

func slow_down():
	if !playing_slow:
		animation_player.play("slow")
		playing_slow = true

func speed_up():
	if playing_slow:
		animation_player.play("speed")
		playing_slow = false

func _process(delta: float) -> void:
	if !audio_stream_player.playing:
		audio_stream_player.play(24)
