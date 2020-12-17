dofile(LockOn_Options.script_path.."HDD/definitions.lua")



local width  	   = 1.0
local height 	   = width * GetAspect()
local initpixelposx
local initpixelposy
local imagepixelsizex
local imagepixelsizey

--------------------------------------------------------------------------------------------------------------------------------------------HDD001_PFD

local HDD001_PFD_origin	         = CreateElement "ceSimple"
HDD001_PFD_origin.name 		     = "HDD001_PFD_origin"
HDD001_PFD_origin.init_pos        = {0,0}
HDD001_PFD_origin.element_params   = {
								"DC",
								} 
HDD001_PFD_origin.controllers 	   = {
								{"parameter_in_range",0,22,28.05},
								}
AddElement(HDD001_PFD_origin)

local HDD001_PFD	    = CreateElement "ceTexPoly"
HDD001_PFD.name 		= "HDD001_PFD"
HDD001_PFD.material   = "PFD_Background"   
HDD001_PFD.vertices = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
HDD001_PFD.indices			= default_box_indices	
HDD001_PFD.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
HDD001_PFD.init_pos   = {0,0} 
HDD001_PFD.element_params		= {
							"hdd_001_brightness",
							"HDD001_PFD",
							}
HDD001_PFD.controllers		= {
							BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							{"parameter_in_range",1,0.95,1.05},
							}
HDD001_PFD.blend_mode = blend_mode.IBM_REGULAR_RGB_ONLY
HDD001_PFD.parent_element = HDD001_PFD_origin.name
AddElement(HDD001_PFD)




