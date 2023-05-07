extends Node2D




func _ready():
	$KoyNoCode/AnimatedSprite.play("sleep")
	$Demi/AnimatedSprite.play("sleep")
	$Demi/AnimatedSprite.flip_h = true
	$KoyNoCode/AnimatedSprite.flip_h = false
	
	#----------- A N I M A T I O N S -------------
	yield(get_tree().create_timer(25), "timeout") #25
	$Light2DCar.enabled = false
	yield(get_tree().create_timer(2), "timeout") #27
	$AudioCarDoor.play()
	yield(get_tree().create_timer(0.25), "timeout") #27.25
	$Demi/AnimatedSprite.flip_h = false
	$Demi/AnimatedSprite.play("afraid")
	yield(get_tree().create_timer(0.25), "timeout") #27.5
	$AudioHunterWlaks.play()
	$Demi/AnimatedSprite.play("idle")
	yield(get_tree().create_timer(0.5), "timeout") #28
	$Demi/EmojiWhats.visible = true
	$AudioTension.play()           #Comienza la musica de tension
	$AudioBirds.volume_db = -10
	yield(get_tree().create_timer(1), "timeout") #29
	$Demi/EmojiWhats.visible = false
	$Demi/AnimatedSprite.flip_h = true
	$Demi/AnimatedSprite.play("crouch")
	$Demi/EmojiAdmiracion.visible = true
	$AudioPop.play()
	yield(get_tree().create_timer(1), "timeout") #30
	$Demi/AnimatedSprite.flip_h = false
	$Demi/AnimatedSprite.play("idle")
	$Demi/EmojiAdmiracion.visible = false
	yield(get_tree().create_timer(2), "timeout") #32
	$Demi/AnimatedSprite.flip_h = true
	$Demi/AnimatedSprite.play("crouch")
	$Demi/EmojiAdmiracion2.visible = true
	$AudioPop.play()
	yield(get_tree().create_timer(1), "timeout") #33
	$Demi/EmojiAdmiracion2.visible = false
	$Demi/AnimatedSprite.play("idle")
	$Demi/AnimatedSprite.flip_h = false
	yield(get_tree().create_timer(2), "timeout") #35
	$Demi/EmojiWhats.visible = true
	$Demi/AnimatedSprite.play("run")
	yield(get_tree().create_timer(2), "timeout") #37
	$AudioHunterWlaks.stop()
	yield(get_tree().create_timer(3), "timeout") #40
	$AudioReloadGun.play()
	yield(get_tree().create_timer(1), "timeout") #41    #Ocurre el disparo
	$AudioShot.play()   
	$KoyNoCode/AnimatedSprite.play("afraid")
	$AudioFoxCrying.play()
	$AudioTension.stop()
	$AudioBirds.stop()
	$AudioGrillos.stop()
	yield(get_tree().create_timer(0.5), "timeout") #41.5
	$KoyNoCode/AnimatedSprite.play("idle")
	$AudioTruckLeaveDoor.play()
	yield(get_tree().create_timer(0.5), "timeout") #42
	$KoyNoCode/AnimatedSprite.flip_h = true
	yield(get_tree().create_timer(0.5), "timeout") #42.5
	$KoyNoCode/AnimatedSprite.flip_h = false
	yield(get_tree().create_timer(0.5), "timeout") #43
	$KoyNoCode/AnimatedSprite.play("run")
	$KoyNoCode/EmojiWhats.visible = true
	$AudioPop.play()
	yield(get_tree().create_timer(1), "timeout") #44
	$KoyNoCode/AnimatedSprite.play("idle")
	$AudioTruckStart.play()
	$Light2DCar.enabled = true
	yield(get_tree().create_timer(0.5), "timeout") #44.5
	$KoyNoCode/EmojiWhats.visible = false
	$KoyNoCode/AnimatedSprite.flip_h = true
	yield(get_tree().create_timer(0.5), "timeout") #45
	$KoyNoCode/AnimatedSprite.flip_h = false
	yield(get_tree().create_timer(1), "timeout") #46
	$KoyNoCode/EmojiNojao.visible = true
	$AudioTruckAceleration.play()
	yield(get_tree().create_timer(0.5), "timeout") #46.5
	$KoyNoCode/AnimatedSprite.play("run")
	yield(get_tree().create_timer(0.5), "timeout") #47
	$PantallaFinal/AnimationPlayer.play("appear")
	yield(get_tree().create_timer(1), "timeout") #48
	$AudioFoxRun.play()
	yield(get_tree().create_timer(7), "timeout") #50
	get_tree().change_scene("res://ChapterOneP6.tscn")



#func _process(delta):
#	pass
