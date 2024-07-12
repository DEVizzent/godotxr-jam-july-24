extends Label3D
# Called when the node enters the scene tree for the first time.
func _ready():
	cambioTexto("Take a ball! \n⬇",70)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func cambioTexto(texto, tamano):
	text = str(texto)
	font_size = tamano

#func _on_pickable_canica_grabbed(pickable, by):
	#cambioTexto("Use it to make the green\none fall out of the platform\n⬅",40)
