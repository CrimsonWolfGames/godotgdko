extends Node2D
onready var playercode=get_node("/root/Node2D/player")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

	
func _on_Area2D_area_entered(area):
	GlobalPlat.savedir = false
	queue_free()
	if CardLogic.reverse_in_hand == true:
		if CardLogic.slot_1_active == true and CardLogic.hand[0]=="reverse":
			print("slot 1 reverse")
		elif CardLogic.slot_2_active == true and CardLogic.hand[1]=="reverse":
			print("slot 2 reverse")
		elif CardLogic.slot_3_active == true and CardLogic.hand[2]=="reverse":
			print("slot 3 reverse")
		elif CardLogic.slot_4_active == true and CardLogic.hand[3]=="reverse":
			print("slot 4 reverse")
	elif CardLogic.small_world_in_hand == true:
		if CardLogic.slot_1_active == true and CardLogic.hand[0]=="small_world":
			print("slot 1 small world")
		elif CardLogic.slot_2_active == true and CardLogic.hand[1]=="small_world":
			print("slot 2 small world")
		elif CardLogic.slot_3_active == true and CardLogic.hand[2]=="small_world":
			print("slot 3 small world")
		elif CardLogic.slot_4_active == true and CardLogic.hand[3]=="small_world":
			print("slot 4 small world")
	elif CardLogic.shadow_realm_in_hand == true:
		if CardLogic.slot_1_active == true and CardLogic.hand[0]=="shadow_realm":
			print("slot 1 shadow_realm")
		elif CardLogic.slot_2_active == true and CardLogic.hand[1]=="shadow_realm":
			print("slot 2 shadow_realm")
		elif CardLogic.slot_3_active == true and CardLogic.hand[2]=="shadow_realm":
			print("slot 3 shadow_realm")
		elif CardLogic.slot_4_active == true and CardLogic.hand[3]=="shadow_realm":
			print("slot 4 shadow_realm")
	elif CardLogic.low_res_in_hand == true:
		if CardLogic.slot_1_active == true and CardLogic.hand[0]=="low_res":
			print("slot 1 low_res")
		elif CardLogic.slot_2_active == true and CardLogic.hand[1]=="low_res":
			print("slot 2 low_res")
		elif CardLogic.slot_3_active == true and CardLogic.hand[2]=="low_res":
			print("slot 3 low_res")
		elif CardLogic.slot_4_active == true and CardLogic.hand[3]=="low_res":
			print("slot 4 low_res")
	
