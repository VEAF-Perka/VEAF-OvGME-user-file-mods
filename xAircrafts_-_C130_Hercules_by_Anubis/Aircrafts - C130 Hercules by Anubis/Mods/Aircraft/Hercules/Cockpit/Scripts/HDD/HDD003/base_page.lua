

dofile(LockOn_Options.script_path.."HDD/definitions.lua")

SetScale(FOV)


local aspect 	   = GetAspect()
local verts = {{-1, aspect},
			   { 1, aspect},
			   { 1,-aspect},
			   {-1,-aspect}}
			   
HDD_base = CreateElement "ceMeshPoly"
HDD_base.name			= "HDD_base"
HDD_base.primitivetype	= "triangles"
HDD_base.vertices		= verts
HDD_base.indices			= default_box_indices	
HDD_base.init_pos		= {0, 0, 0}
HDD_base.material		= MakeMaterial(nil,{0, 0, 0, 255})--black
-- HDD_base.blend_mode 	 = blend_mode.IBM_NO_WRITECOLOR
HDD_base.h_clip_relation	= h_clip_relations.REWRITE_LEVEL
HDD_base.level			= DEFAULT_LEVEL
-- HDD_base.element_params   = {
								-- "Avionics_power",
								-- } 
-- HDD_base.controllers 	   = {
								-- {"parameter_in_range",0,0.95,1.05},
								-- }
--HDD_base.isdraw			= true
--HDD_base.change_opacity	= false
HDD_base.collimated 		= false
HDD_base.isvisible		= true -- visible ou pas pour debug
Add(HDD_base)
