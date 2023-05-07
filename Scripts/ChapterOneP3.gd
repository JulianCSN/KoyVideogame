extends Node2D

var enterInteract1 = false
var enterPuertaAfuera = false


func _ready():
	yield(get_tree().create_timer(2), "timeout")
	$Koy.PermitirMovimiento = true


func _process(delta):
	
	if enterInteract1 == true:
		if Input.is_action_just_pressed("p_interact"):
			$Koy/InteractButton.visible = false
			$Interact1/Label.visible = true
			$AudioPop.play()
	
	if enterPuertaAfuera == true:
		if Input.is_action_just_pressed("p_interact"):
			$AudioWindCavern.volume_db = -30
			$PantallaFinal/AnimationPlayer.play("appear")
			yield(get_tree().create_timer(2), "timeout")
			get_tree().change_scene("res://ChapterOneP4.tscn")


func _on_InfoCueva1_area_entered(area):
	$InfoCueva1/CollisionShape2D.queue_free()
	$InfoCueva1/AnimationPlayer.play("appear")
	$Koy/EmojiHambre2.visible = true
	$AudioStomach.play()
	$AudioPop.play()
	$PuertaAfuera/AnimationPlayer.play("bajarpuerta")
	yield(get_tree().create_timer(6), "timeout")
	$Koy/EmojiHambre2.visible = false

func _on_Interact1_area_entered(area):
	enterInteract1 = true
	$Koy/InteractButton.visible = true
func _on_Interact1_area_exited(area):
	enterInteract1 = false
	$Interact1/Label.visible = false
	$Koy/InteractButton.visible = false

func _on_PuertaAfuera_area_entered(area):
	$PuertaAfuera/InteractButton.visible = true
	enterPuertaAfuera = true
func _on_PuertaAfuera_area_exited(area):
	$PuertaAfuera/InteractButton.visible = false
	enterPuertaAfuera = false
