extends Node2D

@export var up :RayCast2D
@export var down :RayCast2D
@export var left :RayCast2D
@export var right :RayCast2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _check_collision() -> void:
	if(down.is_colliding()):
		print("Estourou em baixo")
	if(up.is_colliding()):
		print("Estourou em cima")
	if(left.is_colliding()):
		print("Estourou na esquerda")
	if(right.is_colliding()):
		print("Estourou na direita")
