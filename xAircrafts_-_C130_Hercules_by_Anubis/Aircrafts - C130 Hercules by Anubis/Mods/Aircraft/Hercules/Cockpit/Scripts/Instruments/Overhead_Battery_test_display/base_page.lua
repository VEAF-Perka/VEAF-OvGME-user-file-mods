

dofile(LockOn_Options.script_path.."Display_definitions.lua")

-- local back   	   = CreateElement "ceMeshPoly"
-- back.material 	   =  MakeMaterial(nil,{255,255,255,255})
-- back.vertices 	   = {{-width, height},
					  -- { width, height},
					  -- { width,-height},
					  -- {-width,-height}}
-- back.indices	  = {0,1,2;0,2,3}
-- back.element_params   = {"BAT"} 
-- back.controllers 	   = {{"parameter_in_range",0,22,28.05}}
-- back.h_clip_relation = h_clip_relations.REWRITE_LEVEL
-- back.level		     = DISPLAY_DEFAULT_LEVEL
-- back.blend_mode 	 = blend_mode.IBM_NO_WRITECOLOR
-- Add(back)

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
-- Display_base.element_params   = {"AC"} 
-- Display_base.controllers 	   = {{"parameter_in_range",0,111,116}}
Display_base.h_clip_relation = h_clip_relations.REWRITE_LEVEL
Display_base.level			= DISPLAY_DEFAULT_LEVEL
Display_base.change_opacity	= false
Display_base.collimated 		= false
Display_base.isvisible		= false
Add(Display_base)
