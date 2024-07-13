@tool
class_name Canica
extends RigidBody3D

@export var puntuacion:int = 20
@export var tamanoradio : float = 0.2
@export var color : Color = Color(0.0, 0.514, 0.275, 1.0)

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
	$MeshInstance3D.get_surface_override_material(0).albedo_color = color
	$CollisionShape3D.shape.radius = tamanoradio
