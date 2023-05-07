extends Node2D





func _ready():
	$KoyNoCode/AnimatedSprite.play("sleep")
	yield(get_tree().create_timer(13.5), "timeout")
	$Pantallafinal/AnimationPlayer.play("appear")
	yield(get_tree().create_timer(.3), "timeout")
	get_tree().change_scene("res://ChapterOneP8.tscn")



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
