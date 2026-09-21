extends Node

@export var value: int = 1

func _on_area_2d_body_entered(body):
	if body is Player:
		Gamecontroller.coin_collected(value)
		Audiocontroller.play_coin_collect()
		self.queue_free()
