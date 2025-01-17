extends Area2D

@onready var timer = $Timer
@onready var fortnite = $fortnite

func _on_body_entered(_body):
	$fortnite.play()
	
	print("you died bruh")
	

func _on_fortnite_finished():
	get_tree().reload_current_scene()
