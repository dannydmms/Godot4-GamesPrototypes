extends StaticBody2D

@export var animation_bomb : AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animation_bomb.play("Bomb")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_animated_sprite_2d_animation_finished() -> void:
	queue_free()
