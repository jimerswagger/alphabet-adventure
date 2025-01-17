extends Area2D

@onready var timer = $Timer


func _on_body_entered(body):
	timer.start()
	$YATTA.play()

func _on_timer_timeout():
	queue_free()
