extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func _physics_process(delta):
	$AnimatedSprite.play(CardLogic.hand[2])
	if Input.is_action_just_pressed("hand_slot_3") and $AnimatedSprite.scale <= Vector2(0.3744,0.384):
		$AnimatedSprite.scale *=1.2
		CardLogic.slot_3_active = true
		print("scale")
	elif Input.is_action_just_pressed("hand_reset"):
		CardLogic.slot_3_active = false
		$AnimatedSprite.scale = Vector2(0.312,0.32)
	elif Input.is_action_just_pressed("hand_slot_1"):
		CardLogic.slot_3_active = false
		$AnimatedSprite.scale = Vector2(0.312,0.32)
	elif Input.is_action_just_pressed("hand_slot_2"):
		CardLogic.slot_3_active = false
		$AnimatedSprite.scale = Vector2(0.312,0.32)
	elif Input.is_action_just_pressed("hand_slot_4"):
		CardLogic.slot_3_active = false
		$AnimatedSprite.scale = Vector2(0.312,0.32)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_mouse_entered():
	print("slot 3 entered")


func _on_Area2D_mouse_exited():
	print("slot 3 exited")


