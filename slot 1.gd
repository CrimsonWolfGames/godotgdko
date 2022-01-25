extends KinematicBody2D
onready var in_area

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	#$AnimatedSprite.play(CardLogic.hand[0])
	pass # Replace with function body.

func _physics_process(delta):
	print(CardLogic.slot_1_active)
	#print(CardLogic.hand[0])
	$AnimatedSprite.play(CardLogic.hand[0])
	if Input.is_action_just_pressed("hand_slot_1") and $AnimatedSprite.scale <= Vector2(0.3744,0.384):
		$AnimatedSprite.scale *=1.2
		CardLogic.slot_1_active =true
		print("scale")
	elif Input.is_action_just_pressed("hand_reset"):
		CardLogic.slot_1_active = false
		$AnimatedSprite.scale = Vector2(0.312,0.32)
	elif Input.is_action_just_pressed("hand_slot_2"):
		CardLogic.slot_1_active =false
		$AnimatedSprite.scale = Vector2(0.312,0.32)
	elif Input.is_action_just_pressed("hand_slot_3"):
		CardLogic.slot_1_active =false
		$AnimatedSprite.scale = Vector2(0.312,0.32)
	elif Input.is_action_just_pressed("hand_slot_4"):
		CardLogic.slot_1_active =false
		$AnimatedSprite.scale = Vector2(0.312,0.32)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area2D_mouse_entered():
	print("slot 1 entered")
	in_area=true
	#if Input.action_press()


func _on_Area2D_mouse_exited():
	print("slot 1 exited")



