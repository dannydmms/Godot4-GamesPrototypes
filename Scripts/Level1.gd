extends Node2D

@export var destructible_tilemap : TileMap
@export var destructible_blocks : int
#-7 -7 até 5 5 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	#for i in destructible_blocks:
	#	var tile = Vector2(randf_range(-6,5),randf_range(5,-6))
	#	if(destructible_tilemap.get_cell_tile_data(0,tile) == null):
	#		destructible_tilemap.set_cell(0,tile,0,Vector2(1,0),0)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
