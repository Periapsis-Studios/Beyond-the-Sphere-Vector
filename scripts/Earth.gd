extends MeshInstance3D

func _ready():
	self.get_material().set_shader_param("xform", transform)
