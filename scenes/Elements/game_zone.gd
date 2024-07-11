extends Area3D


func _on_body_exited(body: Node3D) -> void:
	if body.has_method('getPuntuacion'):
		EventBus.emit_signal(EventBus.CANICA_SALIDA, body.getPuntuacion())
		print_debug('PUNTUADO')
