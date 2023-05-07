extends Node2D

var j



func _ready():
	$Fondo3.visible = false
	yield(get_tree().create_timer(6.5), "timeout")
	$AudioShot.play()
	yield(get_tree().create_timer(0.2), "timeout")
	$AudioShot2.play()
	$AudioBarks.play()
	yield(get_tree().create_timer(0.2), "timeout")
	$AudioShot3.play()
	yield(get_tree().create_timer(5.5), "timeout")
	for j in range(100):
		yield(get_tree().create_timer(0.1), "timeout")
		$AudioFondo.volume_db = $AudioFondo.volume_db -0.4
	$Fondo3/AnimationPlayer.play("aparecer")
	yield(get_tree().create_timer(2), "timeout")
	get_tree().change_scene("res://ChapterOneP2.tscn")



func _process(delta):
	pass
