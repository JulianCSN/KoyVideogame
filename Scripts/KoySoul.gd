extends KinematicBody2D

var Velocidad = 300
var Movimiento = Vector2()
var PermitirMovimiento = false


func _ready():
	pass 


func _process(delta):
	
	Movimiento = Vector2(); #Reiniciar el valor
	
	if PermitirMovimiento == true:
		if Input.is_action_pressed("p_right"): #Derecha 
			Movimiento.x += 1
		if Input.is_action_pressed("p_left"): #Izquierda
			Movimiento.x -= 1
		if Input.is_action_pressed("p_down"): #Abajo
			Movimiento.y = 1
		if Input.is_action_pressed("p_up"): #Arriba
			Movimiento.y -= 1
		
		move_and_slide(Movimiento) #colicionar con paredes usando static body
		
		if Movimiento.length() > 0: #Verificar si se está moviendo
			Movimiento = Movimiento.normalized() * Velocidad; #Normalizar la velocidad
		position += Movimiento * delta; #Actualizar los movimientos 
