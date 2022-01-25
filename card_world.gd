extends KinematicBody2D
onready var animation_array :Array=["shadow_realm","small_world","reverse","low_res"]
onready var random_anim = RandomNumberGenerator.new()
var local_anim

func _ready():
	random_anim.randomize()
	local_anim = animation_array[random_anim.randf_range(0,4)]
	$AnimatedSprite.play(local_anim)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_entered(area):
	for hand_item in CardLogic.hand.size():
		if CardLogic.hand[hand_item] == "blank":
			#CardLogic.hand.append($AnimatedSprite.animation)
			CardLogic.card_anim = local_anim
			CardLogic.hand[hand_item]=CardLogic.card_anim
			print(CardLogic.card_anim)
			break
	for hand_item in CardLogic.hand.size():
		if CardLogic.hand[hand_item] == "reverse":
			CardLogic.reverse_in_hand = true
			print(hand_item)
		else:
			CardLogic.reverse_in_hand = false
		if CardLogic.hand[hand_item] == "low_res":
			CardLogic.low_res_in_hand = true
			print(hand_item)
		else:
			CardLogic.low_res_in_hand = false
		if CardLogic.hand[hand_item] == "small_world":
			CardLogic.small_world_in_hand = true
			print(hand_item)
		else:
			CardLogic.small_world_in_hand =false
		if CardLogic.hand[hand_item] == "shadow_realm":
			CardLogic.shadow_realm_in_hand = true
			print(hand_item)
		else: 
			CardLogic.shadow_realm_in_hand = false
	queue_free()
	print(CardLogic.hand)
