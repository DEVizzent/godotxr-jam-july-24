extends Label3D

var ballCounter:int = 0

signal reset_message_showed()

func _ready():
	cambioTexto("Take a ball! \n⬇",70)

func cambioTexto(texto, tamano)->void:
	text = str(texto)
	font_size = tamano

func _on_pickable_canica_picked_up(pickable: Variant) -> void:
	ballCounter += 1
	if(ballCounter == 1):
		cambioTexto("Throw it making the colored\nones fall out of the platform\n⬅",40)
	if (ballCounter == 3):
		cambioTexto("Pulse red button '\nto get the balls back\n⬇",50)
		reset_message_showed.emit()
		
