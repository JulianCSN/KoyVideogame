extends Node2D


var i


func _ready(): #Animaciones
	yield(get_tree().create_timer(4), "timeout")
	$KoyNoCode/AnimatedSprite.play("sit")
	$AudioStomach.play()
	$KoyNoCode/EmojiHambre.visible = true
	yield(get_tree().create_timer(5), "timeout")
	$KoyNoCode/EmojiHambre.visible = false
	yield(get_tree().create_timer(1), "timeout")
	$KoyNoCode/EmojiWow.visible = true
	$AudioSongBack.play()
	$AudioRanas.volume_db = -50
	$AudioLluvia.volume_db = -30
	$ForestWindAndBirds.volume_db = -5
	$AudioPop.play()
	yield(get_tree().create_timer(3), "timeout")  #13
	$KoyNoCode/EmojiWow.visible = false
	$KoyNoCode/AnimatedSprite.play("crouch")
	yield(get_tree().create_timer(6), "timeout")  #19
	$KoyNoCode/EmojiNojao.visible = true
	$AudioPop.play()
	$Demi/AnimatedSprite.play("crouch")
	yield(get_tree().create_timer(1), "timeout") #20
	$KoyNoCode/EmojiNojao.visible = false
	yield(get_tree().create_timer(1), "timeout") #21
	$AreaChicken/chicken.flip_h = true
	$AreaChicken/chicken/EmojiAdmiracion.visible = true
	yield(get_tree().create_timer(1), "timeout") #22
	$AreaChicken/chicken.flip_h = false
	yield(get_tree().create_timer(1), "timeout") #23
	$AreaChicken/chicken.flip_h = true
	yield(get_tree().create_timer(0.5), "timeout") 
	$AreaChicken/chicken.flip_h = false
	yield(get_tree().create_timer(0.5), "timeout") #24
	$AreaChicken/chicken.flip_h = true
	$AreaChicken/chicken/EmojiAdmiracion.visible = false
	$AreaChicken/chicken/EmojiDead.visible = true
	yield(get_tree().create_timer(1), "timeout") #25
	$KoyNoCode/EmojiCute.visible = true
	$Demi/EmojiCute.visible = true
	$AudioPop.play()
	yield(get_tree().create_timer(1), "timeout") #26
	$Demi/AnimatedSprite.play("run")
	yield(get_tree().create_timer(0.5), "timeout") #26.5
	$Demi/AnimatedSprite.play("crouch")
	yield(get_tree().create_timer(1), "timeout") #27.5
	$KoyNoCode/EmojiCute.visible = false
	$Demi/EmojiCute.visible = false
	$KoyNoCode/EmojiChiveado.visible = true
	$Demi/EmojiChiveado.visible = true
	yield(get_tree().create_timer(2.5), "timeout") #30
	$AreaChicken/chicken/EmojiDead.visible = false
	yield(get_tree().create_timer(1), "timeout") #31
	$Demi/EmojiChiveado.visible = false
	$Demi/EmojiOjitos.visible = true
	$KoyNoCode/EmojiChiveado.visible = false
	yield(get_tree().create_timer(1), "timeout") #32
	$Demi/AnimatedSprite.play("run")
	$Demi/AnimatedSprite.flip_h = true
	$Demi/EmojiOjitos.visible = false
	yield(get_tree().create_timer(1), "timeout") #33
	$KoyNoCode/EmojiLlorar.visible = true
	$AreaChicken/chicken.flip_h = false
	yield(get_tree().create_timer(1), "timeout") #34
	$KoyNoCode/AnimatedSprite.play("run")
	yield(get_tree().create_timer(2), "timeout") #36
	$AreaChicken/chicken/EmojiWhats.visible = true
	$KoyNoCode/EmojiLlorar.visible = false
	$KoyNoCode/AnimatedSprite.flip_h = false
	$Demi/AnimatedSprite.flip_h = false
	yield(get_tree().create_timer(1), "timeout") #37
	$AreaChicken/chicken/EmojiWhats.visible = false
	yield(get_tree().create_timer(2), "timeout") #39
	$AreaChicken/chicken.flip_h = true
	yield(get_tree().create_timer(2), "timeout") #41
	$AreaChicken/chicken.flip_h = false
	$AreaChicken/chicken.play("walk")
	$KoyNoCode/AnimatedSprite.flip_h = true
	$Demi/AnimatedSprite.flip_h = true
	yield(get_tree().create_timer(3), "timeout") #44
	$AreaChicken/chicken.play("idle")
	yield(get_tree().create_timer(2), "timeout") #46
	$AreaChicken/chicken.play("sit")
	yield(get_tree().create_timer(1), "timeout") #47
	$KoyNoCode/AnimatedSprite.flip_h = false
	$Demi/AnimatedSprite.flip_h = false
	yield(get_tree().create_timer(2), "timeout") #49
	$Demi/AnimatedSprite.play("crouch")
	yield(get_tree().create_timer(1), "timeout") #50
	$AreaChicken/chicken.flip_h = true
	$Demi/AnimatedSprite.flip_h = true
	$KoyNoCode/AnimatedSprite.play("crouch")
	yield(get_tree().create_timer(2), "timeout") #52
	$KoyNoCode/AnimatedSprite.flip_h = true
	$KoyNoCode/AnimatedSprite.play("run")
	yield(get_tree().create_timer(1), "timeout") #53
	$Demi/AnimatedSprite.play("run")
	yield(get_tree().create_timer(1), "timeout") #54
	$AreaChicken/chicken.flip_h = false
	yield(get_tree().create_timer(2), "timeout") #56
	$KoyNoCode/AnimatedSprite.flip_h = false
	$Demi/AnimatedSprite.flip_h = false
	yield(get_tree().create_timer(1), "timeout") #57
	$AreaChicken/chicken.flip_h = true
	yield(get_tree().create_timer(0.5), "timeout") #57.5
	$KoyNoCode/AnimatedSprite.play("crouch")
	yield(get_tree().create_timer(0.5), "timeout") #58
	$KoyNoCode/AnimatedSprite.flip_h = true
	yield(get_tree().create_timer(1), "timeout") #59
	$KoyNoCode/AnimatedSprite.flip_h = false
	yield(get_tree().create_timer(1), "timeout") #60
	$KoyNoCode/AnimatedSprite.flip_h = true
	yield(get_tree().create_timer(1), "timeout") #61
	$Demi/AnimatedSprite.play("crouch")
	yield(get_tree().create_timer(2), "timeout") #63
	$AudioPop.play()
	$Demi/EmojiChiveado.visible = true
	$KoyNoCode/EmojiChiveado.visible = true
	yield(get_tree().create_timer(1), "timeout") #64
	$Demi/EmojiChiveado.visible = false
	$KoyNoCode/EmojiChiveado.visible = false
	$Demi/EmojiLove.visible = true
	$KoyNoCode/EmojiLove.visible = true
	$KoyNoCode/AnimatedSprite.play("howl")
	$Demi/AnimatedSprite.play("howl")
	yield(get_tree().create_timer(1), "timeout") #65
	$Corazones/AnimationPlayer.play("appearCorazon")
	yield(get_tree().create_timer(1), "timeout") #66
	$AreaChicken/chicken.flip_h = false
	yield(get_tree().create_timer(1), "timeout") #67
	$AreaChicken/chicken/EmojiNo.visible = true
	$PantallaFinal/AnimationPlayer.play("appear")
	yield(get_tree().create_timer(3), "timeout") #70
	for i in range(80):
		yield(get_tree().create_timer(0.08), "timeout")
		$AudioSongBack.volume_db += -0.8
		$AudioRanas.volume_db += -0.8
		$AudioLluvia.volume_db += -0.8
		$ForestWindAndBirds.volume_db += -0.8
	get_tree().change_scene("res://ChapterOneP5.tscn")




#func _process(delta):
#	pass
