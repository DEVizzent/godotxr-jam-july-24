extends Label3D

func _ready():
	cambioTexto("Take a ball! \n⬇",70)

func cambioTexto(texto, tamano):
	text = str(texto)
	font_size = tamano

func _on_pickable_canica_picked_up(pickable: Variant) -> void:
	cambioTexto("Throw it making the green\none fall out of the platform\n⬅",40)
