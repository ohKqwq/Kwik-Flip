extends StaticBody2D

@export var required_coins: int = 4 
@onready var area_2d: Area2D = $Area2D

func _ready() -> void:
	area_2d.body_entered.connect(_on_body_entered)
func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		if Gamecontroller.total_coins >= required_coins:
			queue_free()
