extends Area2D

@export var win_texture_rect: TextureRect # Drag the TextureRect here

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		win_texture_rect.visible = true
		get_tree().paused = true
		Audiocontroller.play_win()
