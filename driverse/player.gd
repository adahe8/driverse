extends CharacterBody2D

func _physics_process(delta):
	velocity = Input.get_vector("ui_right","ui_left","ui_up","ui_down")*150
	move_and_slide()
