extends Node2D

const bomb = preload("res://Scenes/Bomb.tscn")
var bomb_spawn : Node2D
var bomb_position : Node2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bomb_spawn = get_node("/root/MainGame")
	bomb_position = get_node("/root/MainGame/Player/BombSpawner")
	print(bomb_spawn.name)
	print(bomb_position.name)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	get_input()

func get_input()->void:
	if(Input.is_action_just_pressed("Attack")):
		print("Spawnow a bomba")
		var bomb_instance = bomb.instantiate()
		bomb_spawn.add_child(bomb_instance)
		bomb_instance.position = bomb_position.global_position 
