

dofile(LockOn_Options.script_path.."Display_definitions.lua")

local Display_base 				= CreateElement "ceMeshPoly"
Display_base.name 			= "Display_base"
Display_base.primitivetype 	= "triangles"
-- Display_base.vertices 		=  {{-1,1},{1,1},{1,-1},{-1,-1}}
Display_base.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
Display_base.indices			=  {0,1,2,0,2,3}
Display_base.init_pos		= {0, 0, 0}
Display_base.material		= MakeMaterial(nil,{15,15,15,120})--gray
Display_base.element_params = {
								"PILOT_Network_Sync",
								} 
Display_base.controllers = {
								{"parameter_in_range",0,0.9,1.1},
								 }
Display_base.h_clip_relation = h_clip_relations.REWRITE_LEVEL
Display_base.level			= DISPLAY_DEFAULT_LEVEL + 1
Display_base.change_opacity	= false
Display_base.collimated 		= false
Display_base.isvisible		= false
Add(Display_base)

