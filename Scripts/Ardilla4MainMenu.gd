extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	yield(get_tree().create_timer(31.0), "timeout")
	$AnimatedSprite.animation = "idle"
	yield(get_tree().create_timer(14.0), "timeout")
	get_node("AnimatedSprite").set_flip_h(true)
	$AnimatedSprite.animation = "run"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
