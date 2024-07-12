@tool
class_name Canica
extends RigidBody3D

@export var puntuacion:int = 20
@export var tamanoradio : float = 0.2

func getPuntuacion()->int:
	return puntuacion;

func _ready():
	_resize()

func _process(_delta: float) -> void:
	if Engine.is_editor_hint():
		_resize()

func _resize()->void:
	$MeshInstance3D.mesh.radius = tamanoradio
	$MeshInstance3D.mesh.height = tamanoradio*2
	$CollisionShape3D.shape.radius = tamanoradio
