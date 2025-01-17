extends Area2D



func _on_body_entered(_body):
	$YATTA.play()
	


func _on_yatta_finished():
	queue_free() # Replace with function body.
