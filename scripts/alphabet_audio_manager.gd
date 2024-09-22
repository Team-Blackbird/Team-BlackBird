extends Node

@onready var asplayer = $AudioStreamPlayer
@onready var alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

@onready var sound_queue = []
@onready var all_lower_regex = RegEx.new()

var low_letter_sound_map = {}
var high_letter_sound_map = {}
var rate = 6 # num frames between alphabet sounds
var frame = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	all_lower_regex.compile("[a-z ]+")
	for letter in alphabet:
		if letter != " ": 
			low_letter_sound_map.get_or_add(letter, load("res://audio/sound_effects/alphabet/low/"+letter+".wav"))
			high_letter_sound_map.get_or_add(letter, load("res://audio/sound_effects/alphabet/high/"+letter+".wav"))
	#play_word_high("thesearesomeactualwordtotestoutthisiswhatthevoicesoundslike")
	#play_word_low("thesearesomeactualwordtotestoutthisiswhatthevoicesoundslike")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	frame = (frame + 1) % rate
	if frame == 0:
		play_next_queued_sound()

func play_next_queued_sound():
	if sound_queue.size() > 0:
		if !asplayer.playing: asplayer.play()
		asplayer.get_stream_playback().play_stream(sound_queue[0], 0, 0, 0.9 + randf_range(0,0.2))
		sound_queue.remove_at(0)

func play_word_high(s, cut = false):
	play_word(s, true, cut)

func play_word_low(s, cut = false):
	play_word(s, false, cut)

func play_word(s, high, cut):
	if cut:
		sound_queue = []
	var result = all_lower_regex.search(s)
	if result != null and result.get_string() == s:
		play_letters(s.split(""), high)
		
func play_letters(l, high):
	if high:
		for i in range(l.size()):
			if l[i] != " ":
				queue_sound(high_letter_sound_map[l[i]])
	else:
		for i in range(l.size()):
			if l[i] != " ":
				queue_sound(low_letter_sound_map[l[i]])

func queue_sound(r):
	sound_queue.append(r)
