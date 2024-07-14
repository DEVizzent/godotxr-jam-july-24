extends AudioStreamPlayer3D
@onready var pickable_canica: XRToolsPickable = $".."
var is_on_floor:bool = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if is_on_floor and pickable_canica.linear_velocity.length() > .1:
		if playing == false:
			play()
	elif playing == true:
			stop()
