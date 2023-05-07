extends KinematicBody2D
#PERSONAJE JUGABLE PRINCIPAL DE LA HISTORIA "KOY" y su pareja "Demi"

var Velocidad = 500
var Movimiento = Vector2()
var event01 = true
var PermitirMovimiento = false

func _ready():
	pass


func _process(delta):
	Movimiento = Vector2(); #Reiniciar el valor
	
	if PermitirMovimiento == true:
		if Input.is_action_pressed("p_right"): #Derecha 
			Movimiento.x += 1
			$Area2DKoy/AnimatedSprite.flip_h = Movimiento.x < 0
			$Area2DKoy/AnimatedSprite.animation = "run"
			event01 = true
		elif Input.is_action_pressed("p_left"): #Izquierda
			Movimiento.x -= 1
			$Area2DKoy/AnimatedSprite.animation = "run"
			$Area2DKoy/AnimatedSprite.flip_h = Movimiento.x < 0
			event01 = true
		
		if Movimiento.x == 0 && event01 == true:
			$Area2DKoy/AnimatedSprite.animation = "idle"
		elif Movimiento.x != 0:
			if $Area2DKoy/Timer01.time_left <= 0:
				$Area2DKoy/RunFoxAudio.pitch_scale = rand_range(0.7, 1.3)
				$Area2DKoy/RunFoxAudio.play()
				$Area2DKoy/Timer01.start(0.44)
		
		if Input.is_action_pressed("p_shift"):
			Velocidad = 500
		else:
			Velocidad = 500
		
		move_and_slide(Movimiento) #colicionar con paredes usando static body 
		
		if Movimiento.length() > 0: #Verificar si se está moviendo
			Movimiento = Movimiento.normalized() * Velocidad; #Normalizar la velocidad
		position += Movimiento * delta; #Actualizar los movimientos 
		
		
		#SENTARSE
		if Input.is_action_just_pressed("p_down") && event01 == true && Movimiento.x == 0:
			$Area2DKoy/AnimatedSprite.animation = "sit"
			event01 = false
			$Area2DKoy/SitFoxAudio.pitch_scale = rand_range(1.4, 1.9)
			$Area2DKoy/SitFoxAudio.play()
	
