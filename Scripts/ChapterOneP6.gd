extends Node2D

export(float) var scrolling_speed = -500
var contador_e = 0

var aux1 = false
var auxStart = false
var auxTimer0 = false
var auxScorllingStop = false

var seconds = 30
var i = 0


func _ready():
	$KoyNoCode/AnimatedSprite.flip_h = false
	$KoyNoCode/AnimatedSprite.play("run")
	yield(get_tree().create_timer(4), "timeout")
	$Timer.start()
	aux1 = true 
	auxStart = true



func _process(delta):
	$ParallaxBackground.scroll_offset.x += scrolling_speed * delta  #El fondo se mueve a la velocidad deseada
	
	if auxStart == true:
		#Movimiento de Koy mediante la pulsacion de la tecla E
		if Input.is_action_just_pressed("p_interact"):
			contador_e += 1
			$KoyNoCode.position += Vector2(+7, +0)
	
	if contador_e == 15 && aux1 == true:
		$Panel/AnimationPlayer.play("dissapear")    #Desaparecer la informacion de tecla cuando
		aux1 = false                                #el contador de clics tenga 15
	
	#Contador 30 segundos
	$LbSeconds.text = String(seconds)
	if $LbSeconds.text == "10":                        # SI EL CONTADOR LLEGA A 10
		$LbSeconds.set("custom_colors/font_color", Color8(255, 0, 0))
		$LbSeconds/AnimationPlayer.play("mover")
	
	if $LbSeconds.text == "0" && auxTimer0 == false:   #SI EL CONTADOR LLEGA A 0
		$Timer.stop()
		$LbSeconds/AnimationPlayer.stop()
		$AudioMusicaFondo.stop()
		$Truck01/AnimationPlayer.play("leave")
		$AudioTruck.stop()
		$AudioMusicaPerder.play()
		$PantallaPerder/AnimationPlayer.play("appear")
		auxTimer0 = true
	
	if auxScorllingStop == false:
		if $LbSeconds.text == "0":
			$KoyNoCode.position += Vector2(-1, +0)
			scrolling_speed += +1
			auxStart = false
	
	if scrolling_speed == 0:
		auxScorllingStop = true
		$KoyNoCode/AnimatedSprite.play("sit")


func _on_Timer_timeout():
	seconds -= 1

func _on_Button_pressed():
	get_tree().change_scene("res://ChapterOneP6.tscn")

func _on_EventoWin_area_entered(area):
	$Timer.stop()
	$Truck01/AnimationPlayer.play("shot")
	$AudioMusicaFondo.stop()
	$AudioBass.play()
	$AudioTruck.stop()
	auxStart = false
	yield(get_tree().create_timer(1.8), "timeout")
	$AudioShot.play()
	yield(get_tree().create_timer(0.2), "timeout")
	$KoyNoCode/AnimatedSprite.play("sleep")
	$PantallaFinal/AnimationPlayer.play("appear")
	for i in 45:
		yield(get_tree().create_timer(0.01), "timeout")
		$KoyNoCode.position += Vector2(-24, +0)
	yield(get_tree().create_timer(5), "timeout")
	get_tree().change_scene("res://ChapterOneP7.tscn")

