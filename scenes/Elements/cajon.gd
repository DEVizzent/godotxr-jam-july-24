extends StaticBody3D

var posicionOrigenCanica1 : Vector3
var posicionOrigenCanica2 : Vector3
var posicionOrigenCanica3 : Vector3
@onready var canica1 : XRToolsPickable = $PickableCanica
@onready var canica2 : XRToolsPickable = $PickableCanica2
@onready var canica3 : XRToolsPickable = $PickableCanica3
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	posicionOrigenCanica1 = canica1.global_position
	posicionOrigenCanica2 = canica2.global_position
	posicionOrigenCanica3 = canica3.global_position



func _on_reset_button_released(button: Variant) -> void:
	canica1.global_position = posicionOrigenCanica1
	canica2.global_position = posicionOrigenCanica2
	canica3.global_position = posicionOrigenCanica3
