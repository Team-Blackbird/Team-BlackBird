extends Area2D
var card = null
var is_placeable_area = true
var play_sound = false
var sound_played = false
var type = "normal"

func _process(delta: float) -> void:
	if !play_sound:
		return
	if sound_played and card == null:
		sound_played = false
	if !sound_played and card !=null:
		sound_played = true
		AlphabetAudioManager.play_word_high(card.card_info.anglishization)
