extends StaticBody2D

@export var animation_bomb : AnimatedSprite2D
const fire_bomb = preload("res://Scenes/fire.tscn")
var fire_spawn
var fire_position
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animation_bomb.play("Bomb")
	fire_spawn = get_node("/root/MainGame")
	fire_position = get_node("/root/MainGame/Bomb")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_animated_sprite_2d_animation_finished() -> void:
	spawn_fire()
	queue_free()

func spawn_fire() -> void:
		var fire_bomb_instance = fire_bomb.instantiate()
		fire_spawn.add_child(fire_bomb_instance)
		fire_bomb_instance.position = fire_position.global_position 
