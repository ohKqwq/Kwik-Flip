extends Node2D
@export var mute: bool = false

func _ready():
	if not mute:
		play_music()
func play_music():
	if not mute:
		$music.play()
		
func play_jump() -> void:
	if not mute:
		$jump.play()
func play_coin_collect() -> void:
	if not mute:
		$itemcollect.play()
func play_win() -> void:
	if not mute:
		$win.play()
