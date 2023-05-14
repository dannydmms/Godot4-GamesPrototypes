extends CharacterBody2D
class_name Player
@export var speed = 300.0
@export var animation_player: AnimatedSprite2D

func _physics_process(delta : float) -> void:
	get_input()
	move_and_slide()

func get_input() -> void:
	var input_direction = Input.get_vector("Left","Right","Up","Down")
	velocity = input_direction * speed
	player_animation()
	flip_sprite()

func player_animation() -> void:
	if(velocity != Vector2.ZERO):
		animation_player.play("Walking")
	else:
		animation_player.stop()
		
func flip_sprite() ->void:
	if(velocity.x > 0):
		animation_player.flip_h = false
	elif(velocity.x <0):
		animation_player.flip_h = true
