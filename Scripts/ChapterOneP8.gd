extends Node2D

var keys = 0

func _ready():
	$KoySoul/Jumpscare.visible = false
	$FondoNegro.visible = true
	$KoySoul/LuzPotente.visible = false
	$PantallaFinal.visible = false
	
	yield(get_tree().create_timer(1.5), "timeout")
	yield(get_tree().create_timer(4), "timeout")
	$AudioOnLights.play()
	$KoySoul.PermitirMovimiento = true
	yield(get_tree().create_timer(0.2), "timeout")
	$KoySoul/Light2D/AnimationPlayer.play("latencia")
	$KoySoul/Light2D/AnimationPlayer2.play("onOff")



func _process(delta):
	pass


func _on_AreaMoverte_area_entered(area):
	$LabelMoverte/AnimationPlayer.play("Dissapear")
	$LabelMoverte/AreaMoverte/CollisionShape2D.queue_free()
func _on_Screamer1_area_entered(area):
	$AudioJumpScare1.play()
	$KoySoul/Jumpscare.visible = true
	$BloodContainer.queue_free()
	yield(get_tree().create_timer(.2), "timeout")
	$KoySoul/Jumpscare.visible = false
	$Screamer1/CollisionShape2D.queue_free()


func _on_Lentitud1_area_entered(area):
	$KoySoul.Velocidad = 50
func _on_Lentitud1_area_exited(area):
	$KoySoul.Velocidad = 300

func _on_Key1_area_entered(area):
	$KoySoul/KoyHabla.visible = false
	$Key1/AudioStreamPlayer2D.stop()
	$KoySoul/LuzPotente.visible = true
	$KoySoul/LuzPotente/AnimationPlayer.play("apear")
	$Laberinto.visible = false
	$KoySoul.PermitirMovimiento = false
	$PantallaFinal.visible = true
	$PantallaFinal/AnimationPlayer.play("appear")
	$AudioMiedoFondo.stop()
	$AudioFinalBomb.play()
	yield(get_tree().create_timer(4), "timeout")
	$AudioFinalPerro.play()
	
