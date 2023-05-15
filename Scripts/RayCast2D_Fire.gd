extends RayCast2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await get_tree().create_timer(0.1).timeout
	if(is_colliding()):
		var temp = get_collider()
		if(temp.name == "Destructible"):
			var pos = temp.map_to_world()
			print(pos)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
