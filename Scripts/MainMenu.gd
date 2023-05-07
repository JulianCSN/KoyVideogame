extends Control

var i = 0
var j = 0

onready var CloudAnim01 = get_node("Cloud01/AnimationPlayer01")
onready var CloudAnim02 = get_node("Cloud02/AnimationPlayer02")
onready var BirdAnim01 = get_node("ExtraPlayer4MainMenu/AnimationPlayer05")
onready var BirdAnim02 = get_node("ExtraPlayer4MainMenu2/AnimationPlayer06")

func _ready():
	$ColorRect2.visible = false
	$SettingsMainMenu.visible = false
	$CreditosPage.visible = false        #Ocultar las interfases de opciones y creditos al iniciar escena
	
	$MainTemeAudio.play()
	$WindAudio.play()
	#----------------------- A N I M A T I O N S -------------------------------
	CloudAnim01.play("MoveToRight")
	CloudAnim02.play("MoveToRight02")
	get_node("ExtraPlayer4MainMenu2/AnimatedSprite").set_flip_h(true)
	yield(get_tree().create_timer(8.0), "timeout")
	BirdAnim01.play("BirdMove")	
	yield(get_tree().create_timer(16.0), "timeout")
	BirdAnim02.play("BirdMove")	
	
	#Ciclo for para animar los pajaritos
	for i in range(0, 200, 1):
		yield(get_tree().create_timer(16.0), "timeout")
		BirdAnim01.play("BirdMove")	
		yield(get_tree().create_timer(16.0), "timeout")
		BirdAnim02.play("BirdMove")
	
	set_process(true) 
	#---------------------------------------------------------------------------









func _process(delta):
	#----------------------- A N I M A T I O N S -------------------------------
	if not CloudAnim01.is_playing():
		CloudAnim01.play("MoveToRight")
	
	if not CloudAnim02.is_playing():
		CloudAnim02.play("MoveToRight02")
	#---------------------------------------------------------------------------




#---------------------------- B U T T O N S ------------------------------------
func _on_BtnJugar_pressed():
	$SoundPlay.play()
	$KoyLetters/Panel01/BtnJugar.disabled = true
	$KoyLetters/Panel02/BtnOpciones.disabled = true
	$KoyLetters/Panel03/BtnCreditos.disabled = true
	$ColorRect2/AnimationPlayer.play("FadeIn")
	for j in range(55):
		yield(get_tree().create_timer(0.08), "timeout")
		$MainTemeAudio.volume_db = $MainTemeAudio.volume_db - 0.8
		$WindAudio.volume_db = $WindAudio.volume_db - 0.8
	get_tree().change_scene("res://ChapterOneP1.tscn")


func _on_BtnOpciones_pressed():
	$Click01.play()
	$SettingsMainMenu.visible = true


func _on_BtnCreditos_pressed():
	$Click01.play()
	$CreditosPage.visible = true


func _on_BtnActivarDesMusica_pressed(): 
	$Click01.play()                                  #Funcion para desactivar o activar el volumen de la musica
	if $MainTemeAudio.volume_db == -17:
		$MainTemeAudio.volume_db = -80
		$SettingsMainMenu/Panel/Musica.set("custom_colors/font_color", Color8(255, 26, 26))
	elif $MainTemeAudio.volume_db == -80:
		$MainTemeAudio.volume_db = -17
		$SettingsMainMenu/Panel/Musica.set("custom_colors/font_color", Color8(40, 194, 0))
	


func _on_ButtonMasInfo_pressed():
	$Click01.play()  
	OS.shell_open("https://biblioteca.semarnat.gob.mx/janium/Documentos/Ciga/Libros2013/CD001601.pdf")
