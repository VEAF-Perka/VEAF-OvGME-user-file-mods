dofile(LockOn_Options.script_path.."HDD/definitions.lua")



local width  	   = 1.0
local height 	   = width * GetAspect()
local initpixelposx
local initpixelposy
local imagepixelsizex
local imagepixelsizey

--------------------------------------------------------------------------------------------------------------------------------------------HDD004_PFD

local HDD004_PFD_origin	         = CreateElement "ceSimple"
HDD004_PFD_origin.name 		     = "HDD004_PFD_origin"
HDD004_PFD_origin.init_pos        = {0,0}
HDD004_PFD_origin.element_params   = {
								"AC",
								} 
HDD004_PFD_origin.controllers 	   = {
								{"parameter_in_range",0,111,116},
								}
AddElement(HDD004_PFD_origin)

local HDD004_PFD	    = CreateElement "ceTexPoly"
HDD004_PFD.name 		= "HDD004_PFD"
HDD004_PFD.material   = "PFD_Background"   
HDD004_PFD.vertices = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
HDD004_PFD.indices			= default_box_indices	
HDD004_PFD.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
HDD004_PFD.init_pos   = {0,0} 
HDD004_PFD.element_params		= {
							"hdd_004_brightness",
							"HDD004_PFD",
							}
HDD004_PFD.controllers		= {
							BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							{"parameter_in_range",1,0.95,1.05},
							}
HDD004_PFD.blend_mode = blend_mode.IBM_REGULAR_RGB_ONLY
HDD004_PFD.parent_element = HDD004_PFD_origin.name
AddElement(HDD004_PFD)
