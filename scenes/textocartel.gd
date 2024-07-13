extends MeshInstance3D

signal reset_message_showed()

func _ready():
	$Label3D.text = "Score: 0\nScore to nex level: 100"
	
func cambioTexto(puntuacion, getscore)->void:
	$Label3D.text = "Score: " + str(puntuacion) + "\n SCore to next level: "+str(get_tree().root.SceneBase.puntuacion_minima_victoria)
	if getscore == true:
		$Label3D.text += "\n  [Press to go to next level]"
		$areaBotonNext.show()
