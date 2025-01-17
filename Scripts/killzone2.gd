extends Area2D

@onready var timer = $Timer
@onready var fortnite = $fortnite

func _on_body_entered(_body):
	timer.start()
	$fortnite.play()
	print("you died bruh")
	


func _on_timer_timeout():
	get_tree().reload_current_scene()
