extends Node2D

var enterBasura1 = false
var enterFrog2comer = false
var enterPuertaCueva = false


func _ready():
	$InfoMoverse.visible = true
	yield(get_tree().create_timer(4), "timeout")
	$Koy.PermitirMovimiento = true
	
	yield(get_tree().create_timer(8), "timeout")
	$Koy/EmojiAsco.visible = false
	$Koy/EmojiPobre.visible = false
	$Koy/EmojiHambre/AnimationPlayer.play("anim")
	$AudioStomach.play()
	$AudioPop.play()





func _process(delta):
	
	if enterBasura1 == true:
		if Input.is_action_just_pressed("p_interact"):
			$Basura1/Label.visible = true
			$Koy/EmojiAsco.visible = true
			$Koy/EmojiHambre.visible = false  #Por si acaso lo borramos para que no interfiera
			$Koy/InteractButton.visible = false
			$AudioPop.play()
	
	if enterFrog2comer == true:
		if Input.is_action_just_pressed("p_interact"):
			$frog2comer/Label.visible = true
			$Koy/EmojiPobre.visible = true
			$Koy/InteractButton.visible = false  
			$Koy/EmojiHambre.visible = false  #Por si acaso lo borramos para que no interfiera
			$AudioPop.play()
	
	if enterPuertaCueva == true:
		if Input.is_action_just_pressed("p_interact"):
			$Koy.PermitirMovimiento = false
			$PantallaFinal/AnimationPlayer.play("appear")
			yield(get_tree().create_timer(1), "timeout")
			get_tree().change_scene("res://ChapterOneP3.tscn")





func _on_Basura1_area_entered(area):
	$Koy/InteractButton.visible = true
	enterBasura1 = true
func _on_Basura1_area_exited(area):
	$Koy/InteractButton.visible = false
	$Basura1/Label.visible = false
	$Koy/EmojiAsco.visible = false
	enterBasura1 = false

func _on_Frog_area_entered(area):
	$Frog/CollisionShape2D.queue_free()
	$Frog/AnimatedSprite.play("walk")
	$Frog/AnimationPlayer.play("frog")

func _on_Pajarito1_area_entered(area):
	$Pajarito1/CollisionShape2D.queue_free()
	$Pajarito1/AnimatedSprite.play("fly")
	$Pajarito1/AnimationPlayer.play("fly")

func _on_Pista1_area_entered(area):
	$Pista1/Label2.visible = true
	$Pista1/AnimationPlayer.play("aparecer")
	$Pista1/CollisionShape2D.queue_free()

func _on_Frog2_area_entered(area):
	$Frog2/CollisionShape2D.queue_free()
	$Koy/Camera2D/ParallaxBackground/ParallaxLayer8/AnimatedSprite.play("dead")
func _on_frog2comer_area_entered(area):
	$Koy/InteractButton.visible = true
	enterFrog2comer = true
func _on_frog2comer_area_exited(area):
	$Koy/InteractButton.visible = false
	$frog2comer/Label.visible = false
	$Koy/EmojiPobre.visible = false
	enterFrog2comer = false

func _on_PuertaCueva_area_entered(area):
	$Koy/InteractButton.visible = true
	enterPuertaCueva = true
func _on_PuertaCueva_area_exited(area):
	$Koy/InteractButton.visible = false
	enterPuertaCueva = false
