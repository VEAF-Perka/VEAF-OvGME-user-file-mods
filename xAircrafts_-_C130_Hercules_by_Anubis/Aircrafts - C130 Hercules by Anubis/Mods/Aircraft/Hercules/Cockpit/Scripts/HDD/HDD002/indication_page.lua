

dofile(LockOn_Options.script_path.."HDD/definitions.lua")
-- dofile(LockOn_Options.script_path.."symbols.lua")

	-- IBM_NO_WRITECOLOR						= 0, -- element will be rendered only to stencil buffer
	-- IBM_REGULAR								= 1, -- regular work with write mask set to RGBA
	-- IBM_REGULAR_ADDITIVE_ALPHA				= 2, -- regular work with write mask set to RGBA , additive alpha for HUD 
	-- IBM_REGULAR_RGB_ONLY					= 3, -- regular work with write mask set to RGB (without alpha)
	-- IBM_REGULAR_RGB_ONLY_ADDITIVE_ALPHA		= 4, -- regular work with write mask set to RGB (without alpha) , additive alpha for HUD 
	-- IBM_ONLY_ALPHA							= 5, -- write mask set only for alpha

-- alignment options:
--"RightBottom"
--"LeftTop"
--"RightTop"
--"LeftCenter"
--"RightCenter"
--"CenterBottom"
--"CenterTop"
--"CenterCenter"
--"LeftBottom"
--[[
SetScale  have generalized form input value : 
SetScale(MILLYRADIANS)
SetScale(FOV)
SetScale(METERS)

in case of FOV , GetScale()  will return half width of your indicator 

MILLYRADIANS :  0.001 * viewDistance , where viewDistance is default distance from pilot eye to indicator projection plane

]]--
-------MATERIALS-------
-- materials = {}   
-- materials["WHITE"]  = {255, 255, 255, 255}
-- materials["GREEN"]   = {0, 255, 0, 255}
-- materials["YELLOW"]   = {243, 116, 13, 255}
-- materials["RED"]    = {255, 0, 0, 255}
-- materials["BLACK"]    = {0, 0, 0, 255}
-- materials["AMBER"]    = {255, 194, 0, 255}

-- local aspect       = GetAspect() -- GetHalfHeight()/GetHalfWidth()
local width  	   = 1.0
local height 	   = width * GetAspect()
local initpixelposx
local initpixelposy
local imagepixelsizex
local imagepixelsizey

--------------------------------------------------------------------------------------------------------------------------------------------Flight_Data

-- local Flight_Data_origin	         = CreateElement "ceSimple"
-- Flight_Data_origin.name 		     = "Flight_Data_origin"
-- Flight_Data_origin.init_pos        = {0,0}
-- Flight_Data_origin.element_params   = {
								-- "HDD002_Flight_Data",
										   -- } 
-- Flight_Data_origin.controllers 	   = {
								-- {"parameter_in_range",0,0.95,1.05},
								-- }
-- AddElement(Flight_Data_origin)

-- local Flight_Data_Back	    = CreateElement "ceTexPoly"
-- Flight_Data_Back.name 		= "Flight_Data_Back"
-- Flight_Data_Back.material   = "Flight_Data"   
-- Flight_Data_Back.vertices = {{-width, height},
					  -- { width, height},
					  -- { width,-height},
					  -- {-width,-height}}
-- Flight_Data_Back.indices			= default_box_indices	
-- Flight_Data_Back.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
-- Flight_Data_Back.init_pos   = {0,0} 
-- Flight_Data_Back.element_params   = {
							-- "hdd_002_brightness",
						-- } 
-- Flight_Data_Back.controllers 	   = {
								-- BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							-- }
-- Flight_Data_Back.blend_mode = blend_mode.IBM_REGULAR_RGB_ONLY
-- Flight_Data_Back.parent_element = Flight_Data_origin.name
-- AddElement(Flight_Data_Back)

--------------------------------------------------------------------------------------------------------------------------------------------Engine_Status

local Engine_Status_origin	         = CreateElement "ceSimple"
Engine_Status_origin.name 		     = "Engine_Status_origin"
Engine_Status_origin.init_pos        = {0,0}
Engine_Status_origin.element_params   = {
								"HDD002_Engine_Status",
										   } 
Engine_Status_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
AddElement(Engine_Status_origin)

Add_Object_Text(HP, "HP", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"HP"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2014.7,--initpixelposx
					437.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(MGT, "MGT", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"MGT"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2014.7,--initpixelposx
					1304.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(NG, "NG", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"NG"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2014.7,--initpixelposx
					2213.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(NP, "NP", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"NP"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2014.7,--initpixelposx
					2751.1,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(FF, "FF", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"FF"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2014.7,--initpixelposx
					2993.1,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(G_PSI, "G_PSI", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"G_PSI"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2014.7,--initpixelposx
					3347.9,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(E_PSI, "E_PSI", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"E_PSI"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2014.7,--initpixelposx
					3567.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(TEMP, "TEMP", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"TEMP"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2014.7,--initpixelposx
					3774.4,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(QTY, "QTY", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"QTY"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2014.7,--initpixelposx
					3979.3,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Line(PFD_Hors_Line1, "PFD_Hors_Line1", Engine_Status_origin.name,
					MakeMaterial(nil,{0, 255, 0, 255}),--GREEN
					4082.0,--imagepixelsizex
					15.0,--imagepixelsizey
					2046.0,--initpixelposx
					2611.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						{"opacity_using_parameter",0},
					}
				)
Add_Object_Text(OIL, "OIL", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"OIL"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2014.7,--initpixelposx
					3155.6,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Line(PFD_Hors_Line2, "PFD_Hors_Line2", Engine_Status_origin.name,
					MakeMaterial(nil,{0, 255, 0, 255}),--GREEN
					1891.0,--imagepixelsizex
					15.0,--imagepixelsizey
					916.5,--initpixelposx
					3145.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						{"opacity_using_parameter",0},
					}
				)
Add_Object_Line(PFD_Hors_Line3, "PFD_Hors_Line3", Engine_Status_origin.name,
					MakeMaterial(nil,{0, 255, 0, 255}),--GREEN
					1891.0,--imagepixelsizex
					15.0,--imagepixelsizey
					3171.5,--initpixelposx
					3145.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						{"opacity_using_parameter",0},
					}
				)
Add_Object_Text(ACAWS, "ACAWS", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"ACAWS"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2014.7,--initpixelposx
					4194.2,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Line(PFD_Hors_Line4, "PFD_Hors_Line4", Engine_Status_origin.name,
					MakeMaterial(nil,{0, 255, 0, 255}),--GREEN
					1677.0,--imagepixelsizex
					15.0,--imagepixelsizey
					843.5,--initpixelposx
					4189.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						{"opacity_using_parameter",0},
					}
				)
Add_Object_Line(PFD_Hors_Line5, "PFD_Hors_Line5", Engine_Status_origin.name,
					MakeMaterial(nil,{0, 255, 0, 255}),--GREEN
					1677.0,--imagepixelsizex
					15.0,--imagepixelsizey
					3248.5,--initpixelposx
					4189.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						{"opacity_using_parameter",0},
					}
				)
------------------------------------------------------------------------------------------------------------------------------------------------ Engine1

------------------------------------------------------------------------------------------------------------Engine1_StartBox
Add_Object_Box(Engine1_StartBox, "Engine1_StartBox", Engine_Status_origin.name,
					MakeMaterial(nil,{255, 255, 255, 255}),--WHITE
					780.0,--imagepixelsizex
					4013.0,--imagepixelsizey
					510.1,--initpixelposx
					2094.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_Startlight_Energized",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
					}
				)
Add_Object_Text(Engine1_StartTimerMin, "Engine1_StartTimerMin", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					346.5,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_Startlight_Energized",
						"Engine1_StartTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine1_StartTimerSeparator, "Engine1_StartTimerSeparator", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"CenterCenter",--objectalignment
					{"    :    "},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					396.5,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_Startlight_Energized",
						"Engine1_StartTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine1_StartTimerSec, "Engine1_StartTimerSec", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					446.5,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_Startlight_Energized",
						"Engine1_StartTimerSec",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine1_BETA, "Engine1_BETA", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"CenterCenter",--objectalignment
					{"BETA"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					476.5,--initpixelposx
					901.0,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_Startlight_Energized",
						"Engine1BetaMode",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.1, 0.1},
						{"parameter_in_range",2, 0.95, 1.05},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine1_B, "Engine1_B", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"B"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					450.0,--initpixelposx
					550.0,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_Startlight_Energized",
						"Engine1BetaReady",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.1, 0.1},
						{"parameter_in_range",2, 0.95, 1.05},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------------------------------------------Engine1_HP

Add_Object_Image(Engine1_HP_Background, "Engine1_HP_Background", Engine_Status_origin.name,
					"HP_Background",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.0,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
					}
				)
Add_Object_Image(Engine1_HP_Needle_Quarter_White_Band, "Engine1_HP_Needle_Quarter_White_Band", Engine_Status_origin.name,
					"HP_Needle_Quarter_White_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_5minWarn",
						"Engine1_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1, -0.1, 0.1},
						{"parameter_in_range",2,3.161,5.0},
						{"rotate_using_parameter",2, -1.0 },
					}
				)
Add_Object_Image(Engine1_HP_Needle_Quarter_Amber_Band, "Engine1_HP_Needle_Quarter_Amber_Band", Engine_Status_origin.name,
					"HP_Needle_Quarter_Amber_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_5minWarn",
						"Engine1_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1, 0.9, 1.1},
						{"parameter_in_range",2,3.082,5.0},
						{"rotate_using_parameter",2, -1.0 },
					}
				)
Add_Object_Image(Engine1_HP_Needle_Quarter_Green_Band, "Engine1_HP_Needle_Quarter_Green_Band", Engine_Status_origin.name,
					"HP_Needle_Quarter_Green_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1,-0.9,1.598},
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Image(Engine1_HP_Needle_Half_Green_Band, "Engine1_HP_Needle_Half_Green_Band", Engine_Status_origin.name,
					"HP_Needle_Half_Green_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1,1.598,3.161},
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Image(Engine1_HP_Needle_ThreeQ_Green_Band, "Engine1_HP_Needle_ThreeQ_Green_Band", Engine_Status_origin.name,
					"HP_Needle_ThreeQ_Green_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1,3.161,4.197},
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Image(Engine1_HP_Needle_ThreeQ_Green_Band_Stop, "Engine1_HP_Needle_ThreeQ_Green_Band_Stop", Engine_Status_origin.name,
					"HP_Needle_ThreeQ_Green_Band_Stop",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1,4.197,5.0},
					}
				)
Add_Object_Image(Engine1_HP_Ref_Set_Mark, "Engine1_HP_Ref_Set_Mark", Engine_Status_origin.name,
					"HP_Ref_Set_Mark",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_HP_REF_SET_MARK",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"rotate_using_parameter",1, -1.0 },
					}
				)
-------------------------------------------------------------------------------------------------Engine1_TOset
Add_Object_Text(Engine1_5minTimerMin, "Engine1_5minTimerMin", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					346.5,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_TOset",
						"Engine1_5minWarn",
						"Engine1_5minTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"parameter_in_range",2, -0.1, 0.1},
						{"text_using_parameter",3,0},
					}
				)
				
Add_Object_Text(Engine1_5minTimerSeparator, "Engine1_5minTimerSeparator", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"CenterCenter",--objectalignment
					{"    :    "},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					396.5,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_TOset",
						"Engine1_5minWarn",
						"Engine1_5minTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"parameter_in_range",2, -0.1, 0.1},
						{"text_using_parameter",3,0},
					}
				)
Add_Object_Text(Engine1_5minTimerSec, "Engine1_5minTimerSec", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					446.5,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_TOset",
						"Engine1_5minWarn",
						"Engine1_5minTimerSec",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"parameter_in_range",2, -0.1, 0.1},
						{"text_using_parameter",3,0},
					}
				)
-------------------------------------------------------------------------------------------------Engine1_5minWarn
Add_Object_Text(Engine1_5minTimerMin, "Engine1_5minTimerMin", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					346.5,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_5minWarn",
						"Engine1_5minTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine1_5minTimerSeparator, "Engine1_5minTimerSeparator", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"CenterCenter",--objectalignment
					{"    :    "},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					396.5,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_5minWarn",
						"Engine1_5minTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine1_5minTimerSec, "Engine1_5minTimerSec", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					446.5,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_5minWarn",
						"Engine1_5minTimerSec",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
-------------------------------------------------------------------------------------------------Engine1_HP_Mask
Add_Object_Image(Engine1_HP_Mask, "Engine1_HP_Mask", Engine_Status_origin.name,
					"HP_Mask",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.0,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
					}
				)
Add_Object_Box(Engine1_SetTOBox, "Engine1_SetTOBox", Engine_Status_origin.name,
					MakeMaterial(nil,{255, 255, 255, 255}),--WHITE
					400.0,--imagepixelsizex
					170.0,--imagepixelsizey
					290.0,--initpixelposx
					300.0,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_TOset",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
					}
				)
Add_Object_Text(Engine1_HP, "Engine1_HP", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8,--initpixelposx
					297.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_5minWarn",
						"Engine1_HP",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.1, 0.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine1_HP, "Engine1_HP", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8,--initpixelposx
					297.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_5minWarn",
						"Engine1_HP",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine1_MGT
				
Add_Object_Image(Engine1_MGT_Background, "Engine1_MGT_Background", Engine_Status_origin.name,
					"MGT_Background",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.0,--initpixelposx
					1316.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
					}
				)
Add_Object_Image(Engine1_MGT_Needle, "Engine1_MGT_Needle", Engine_Status_origin.name,
					"HP_Needle",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5,--initpixelposx
					1316.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_MGT_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Text(Engine1_MGT, "Engine1_MGT", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8,--initpixelposx
					1151.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_MGT",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.5, 833.1},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Engine1_MGT, "Engine1_MGT", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8,--initpixelposx
					1151.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_MGT",
					},
					{--controllers
						{"opacity_using_parameter",01},
						{"parameter_in_range",1, 832.9, 852.1},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Engine1_MGT, "Engine1_MGT", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8,--initpixelposx
					1151.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_MGT",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 851.9, 1000},
						{"text_using_parameter",1,0},
					}
				)
				
------------------------------------------------------------------------------------------------------------Engine1_NG
				
Add_Object_Image(Engine1_NG_Background, "Engine1_NG_Background", Engine_Status_origin.name,
					"NG_Background",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.0,--initpixelposx
					2204.3,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
					}
				)
Add_Object_Image(Engine1_NG_Needle, "Engine1_NG_Needle", Engine_Status_origin.name,
					"HP_Needle",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5,--initpixelposx
					2204.3,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_NG_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Text(Engine1_NG, "Engine1_NG", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8,--initpixelposx
					2020.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_NG",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine1_NP
				
Add_Object_Text(Engine1_NP, "Engine1_NP", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5,--initpixelposx
					2761.4,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_NP",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine1_FF
				
Add_Object_Text(Engine1_FF, "Engine1_FF", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5,--initpixelposx
					2998.0,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_FuelFlow",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine1_GPSI
				
Add_Object_Text(Engine1_GPSI, "Engine1_GPSI", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5,--initpixelposx
					3343.3,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_GPSI",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine1_EPSI
				
Add_Object_Text(Engine1_EPSI, "Engine1_EPSI", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.1f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5,--initpixelposx
					3561.9,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_EPSI",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------ENGINE1_OILTEMP
				
Add_Object_Text(Engine1_OILTEMP, "Engine1_OILTEMP", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.1f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5,--initpixelposx
					3768.9,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_OILTEMP",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine1_OilQty
				
Add_Object_Text(Engine1_OilQty, "Engine1_OilQty", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.1f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5,--initpixelposx
					3969.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_OILQTY",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 4, 14.1},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Engine1_OilQty, "Engine1_OilQty", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%.1f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5,--initpixelposx
					3969.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine1_OILQTY",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.5, 4},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------------------------------------------ Engine2
local Engine2pixelposx = 780
------------------------------------------------------------------------------------------------------------Engine2_StartBox
Add_Object_Box(Engine2_StartBox, "Engine2_StartBox", Engine_Status_origin.name,
					MakeMaterial(nil,{255, 255, 255, 255}),--WHITE
					780.0,--imagepixelsizex
					4013.0,--imagepixelsizey
					510.1 + Engine2pixelposx,--initpixelposx
					2094.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_Startlight_Energized",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
					}
				)
Add_Object_Text(Engine2_StartTimerMin, "Engine2_StartTimerMin", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					346.5 + Engine2pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_Startlight_Energized",
						"Engine2_StartTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine2_StartTimerSeparator, "Engine2_StartTimerSeparator", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"CenterCenter",--objectalignment
					{"    :    "},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					396.5 + Engine2pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_Startlight_Energized",
						"Engine2_StartTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine2_StartTimerSec, "Engine2_StartTimerSec", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					446.5 + Engine2pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_Startlight_Energized",
						"Engine2_StartTimerSec",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine2_BETA, "Engine2_BETA", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"CenterCenter",--objectalignment
					{"BETA"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					476.5 + Engine2pixelposx,--initpixelposx
					901.0,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_Startlight_Energized",
						"Engine2BetaMode",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.1, 0.1},
						{"parameter_in_range",2, 0.95, 1.05},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine2_B, "Engine2_B", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"B"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					450.0 + Engine2pixelposx,--initpixelposx
					550.0,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_Startlight_Energized",
						"Engine2BetaReady",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.1, 0.1},
						{"parameter_in_range",2, 0.95, 1.05},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------------------------------------------Engine2_HP

Add_Object_Image(Engine2_HP_Background, "Engine2_HP_Background", Engine_Status_origin.name,
					"HP_Background",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.0 + Engine2pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
					}
				)
Add_Object_Image(Engine2_HP_Needle_Quarter_White_Band, "Engine2_HP_Needle_Quarter_White_Band", Engine_Status_origin.name,
					"HP_Needle_Quarter_White_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine2pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_5minWarn",
						"Engine2_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1, -0.1, 0.1},
						{"parameter_in_range",2,3.161,5.0},
						{"rotate_using_parameter",2, -1.0 },
					}
				)
Add_Object_Image(Engine2_HP_Needle_Quarter_Amber_Band, "Engine2_HP_Needle_Quarter_Amber_Band", Engine_Status_origin.name,
					"HP_Needle_Quarter_Amber_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine2pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_5minWarn",
						"Engine2_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1, 0.9, 1.1},
						{"parameter_in_range",2,3.082,5.0},
						{"rotate_using_parameter",2, -1.0 },
					}
				)
Add_Object_Image(Engine2_HP_Needle_Quarter_Green_Band, "Engine2_HP_Needle_Quarter_Green_Band", Engine_Status_origin.name,
					"HP_Needle_Quarter_Green_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine2pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1,-0.9,1.598},
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Image(Engine2_HP_Needle_Half_Green_Band, "Engine2_HP_Needle_Half_Green_Band", Engine_Status_origin.name,
					"HP_Needle_Half_Green_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine2pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1,1.598,3.161},
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Image(Engine2_HP_Needle_ThreeQ_Green_Band, "Engine2_HP_Needle_ThreeQ_Green_Band", Engine_Status_origin.name,
					"HP_Needle_ThreeQ_Green_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine2pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1,3.161,4.197},
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Image(Engine2_HP_Needle_ThreeQ_Green_Band_Stop, "Engine2_HP_Needle_ThreeQ_Green_Band_Stop", Engine_Status_origin.name,
					"HP_Needle_ThreeQ_Green_Band_Stop",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine2pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1,4.197,5.0},
					}
				)
Add_Object_Image(Engine2_HP_Ref_Set_Mark, "Engine2_HP_Ref_Set_Mark", Engine_Status_origin.name,
					"HP_Ref_Set_Mark",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine2pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_HP_REF_SET_MARK",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"rotate_using_parameter",1, -1.0 },
					}
				)
-------------------------------------------------------------------------------------------------Engine2_TOset
Add_Object_Text(Engine2_5minTimerMin, "Engine2_5minTimerMin", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					346.5 + Engine2pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_TOset",
						"Engine2_5minWarn",
						"Engine2_5minTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"parameter_in_range",2, -0.1, 0.1},
						{"text_using_parameter",3,0},
					}
				)
				
Add_Object_Text(Engine2_5minTimerSeparator, "Engine2_5minTimerSeparator", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"CenterCenter",--objectalignment
					{"    :    "},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					396.5 + Engine2pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_TOset",
						"Engine2_5minWarn",
						"Engine2_5minTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"parameter_in_range",2, -0.1, 0.1},
						{"text_using_parameter",3,0},
					}
				)
Add_Object_Text(Engine2_5minTimerSec, "Engine2_5minTimerSec", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					446.5 + Engine2pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_TOset",
						"Engine2_5minWarn",
						"Engine2_5minTimerSec",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"parameter_in_range",2, -0.1, 0.1},
						{"text_using_parameter",3,0},
					}
				)
-------------------------------------------------------------------------------------------------Engine2_5minWarn
Add_Object_Text(Engine2_5minTimerMin, "Engine2_5minTimerMin", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					346.5 + Engine2pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_5minWarn",
						"Engine2_5minTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine2_5minTimerSeparator, "Engine2_5minTimerSeparator", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"CenterCenter",--objectalignment
					{"    :    "},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					396.5 + Engine2pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_5minWarn",
						"Engine2_5minTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine2_5minTimerSec, "Engine2_5minTimerSec", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					446.5 + Engine2pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_5minWarn",
						"Engine2_5minTimerSec",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
-------------------------------------------------------------------------------------------------Engine2_HP_Mask
Add_Object_Image(Engine2_HP_Mask, "Engine2_HP_Mask", Engine_Status_origin.name,
					"HP_Mask",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.0 + Engine2pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
					}
				)
Add_Object_Box(Engine2_SetTOBox, "Engine2_SetTOBox", Engine_Status_origin.name,
					MakeMaterial(nil,{255, 255, 255, 255}),--WHITE
					400.0,--imagepixelsizex
					170.0,--imagepixelsizey
					290.0 + Engine2pixelposx,--initpixelposx
					300.0,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_TOset",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
					}
				)
Add_Object_Text(Engine2_HP, "Engine2_HP", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine2pixelposx,--initpixelposx
					297.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_5minWarn",
						"Engine2_HP",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.1, 0.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine2_HP, "Engine2_HP", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine2pixelposx,--initpixelposx
					297.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_5minWarn",
						"Engine2_HP",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine2_MGT
				
Add_Object_Image(Engine2_MGT_Background, "Engine2_MGT_Background", Engine_Status_origin.name,
					"MGT_Background",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.0 + Engine2pixelposx,--initpixelposx
					1316.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
					}
				)
Add_Object_Image(Engine2_MGT_Needle, "Engine2_MGT_Needle", Engine_Status_origin.name,
					"HP_Needle",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine2pixelposx,--initpixelposx
					1316.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_MGT_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Text(Engine2_MGT, "Engine2_MGT", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine2pixelposx,--initpixelposx
					1151.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_MGT",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.5, 833.1},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Engine2_MGT, "Engine2_MGT", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine2pixelposx,--initpixelposx
					1151.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_MGT",
					},
					{--controllers
						{"opacity_using_parameter",01},
						{"parameter_in_range",1, 832.9, 852.1},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Engine2_MGT, "Engine2_MGT", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine2pixelposx,--initpixelposx
					1151.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_MGT",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 851.9, 1000},
						{"text_using_parameter",1,0},
					}
				)
				
------------------------------------------------------------------------------------------------------------Engine2_NG
				
Add_Object_Image(Engine2_NG_Background, "Engine2_NG_Background", Engine_Status_origin.name,
					"NG_Background",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.0 + Engine2pixelposx,--initpixelposx
					2204.3,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
					}
				)
Add_Object_Image(Engine2_NG_Needle, "Engine2_NG_Needle", Engine_Status_origin.name,
					"HP_Needle",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine2pixelposx,--initpixelposx
					2204.3,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_NG_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Text(Engine2_NG, "Engine2_NG", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine2pixelposx,--initpixelposx
					2020.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_NG",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine2_NP
				
Add_Object_Text(Engine2_NP, "Engine2_NP", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine2pixelposx,--initpixelposx
					2761.4,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_NP",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine2_FF
				
Add_Object_Text(Engine2_FF, "Engine2_FF", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine2pixelposx,--initpixelposx
					2998.0,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_FuelFlow",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine2_GPSI
				
Add_Object_Text(Engine2_GPSI, "Engine2_GPSI", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine2pixelposx,--initpixelposx
					3343.3,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_GPSI",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine2_EPSI
				
Add_Object_Text(Engine2_EPSI, "Engine2_EPSI", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.1f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine2pixelposx,--initpixelposx
					3561.9,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_EPSI",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine2_OILTEMP
				
Add_Object_Text(Engine2_OILTEMP, "Engine2_OILTEMP", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.1f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine2pixelposx,--initpixelposx
					3768.9,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_OILTEMP",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine2_OilQty
				
Add_Object_Text(Engine2_OilQty, "Engine2_OilQty", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.1f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine2pixelposx,--initpixelposx
					3969.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_OILQTY",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 4, 14.1},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Engine2_OilQty, "Engine2_OilQty", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%.1f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine2pixelposx,--initpixelposx
					3969.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine2_OILQTY",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.5, 4},
						{"text_using_parameter",1,0},
					}
				)
------------------------------------------------------------------------------------------------------------------------------------------------ Engine3
local Engine3pixelposx = 2300
local Engine3pixelposxP = 270
------------------------------------------------------------------------------------------------------------Engine3_StartBox
Add_Object_Box(Engine3_StartBox, "Engine3_StartBox", Engine_Status_origin.name,
					MakeMaterial(nil,{255, 255, 255, 255}),--WHITE
					780.0,--imagepixelsizex
					4013.0,--imagepixelsizey
					510.1 + Engine3pixelposx,--initpixelposx
					2094.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_Startlight_Energized",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
					}
				)
Add_Object_Text(Engine3_StartTimerMin, "Engine3_StartTimerMin", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					346.5 + Engine3pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_Startlight_Energized",
						"Engine3_StartTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine3_StartTimerSeparator, "Engine3_StartTimerSeparator", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"CenterCenter",--objectalignment
					{"    :    "},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					396.5 + Engine3pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_Startlight_Energized",
						"Engine3_StartTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine3_StartTimerSec, "Engine3_StartTimerSec", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					446.5 + Engine3pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_Startlight_Energized",
						"Engine3_StartTimerSec",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine3_BETA, "Engine3_BETA", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"CenterCenter",--objectalignment
					{"BETA"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					476.5 + Engine3pixelposx,--initpixelposx
					901.0,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_Startlight_Energized",
						"Engine3BetaMode",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.1, 0.1},
						{"parameter_in_range",2, 0.95, 1.05},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine3_B, "Engine3_B", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"B"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					450.0 + Engine3pixelposx,--initpixelposx
					550.0,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_Startlight_Energized",
						"Engine3BetaReady",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.1, 0.1},
						{"parameter_in_range",2, 0.95, 1.05},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------------------------------------------Engine3_HP

Add_Object_Image(Engine3_HP_Background, "Engine3_HP_Background", Engine_Status_origin.name,
					"HP_Background",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.0 + Engine3pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
					}
				)
Add_Object_Image(Engine3_HP_Needle_Quarter_White_Band, "Engine3_HP_Needle_Quarter_White_Band", Engine_Status_origin.name,
					"HP_Needle_Quarter_White_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine3pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_5minWarn",
						"Engine3_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1, -0.1, 0.1},
						{"parameter_in_range",2,3.161,5.0},
						{"rotate_using_parameter",2, -1.0 },
					}
				)
Add_Object_Image(Engine3_HP_Needle_Quarter_Amber_Band, "Engine3_HP_Needle_Quarter_Amber_Band", Engine_Status_origin.name,
					"HP_Needle_Quarter_Amber_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine3pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_5minWarn",
						"Engine3_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1, 0.9, 1.1},
						{"parameter_in_range",2,3.082,5.0},
						{"rotate_using_parameter",2, -1.0 },
					}
				)
Add_Object_Image(Engine3_HP_Needle_Quarter_Green_Band, "Engine3_HP_Needle_Quarter_Green_Band", Engine_Status_origin.name,
					"HP_Needle_Quarter_Green_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine3pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1,-0.9,1.598},
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Image(Engine3_HP_Needle_Half_Green_Band, "Engine3_HP_Needle_Half_Green_Band", Engine_Status_origin.name,
					"HP_Needle_Half_Green_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine3pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1,1.598,3.161},
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Image(Engine3_HP_Needle_ThreeQ_Green_Band, "Engine3_HP_Needle_ThreeQ_Green_Band", Engine_Status_origin.name,
					"HP_Needle_ThreeQ_Green_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine3pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1,3.161,4.197},
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Image(Engine3_HP_Needle_ThreeQ_Green_Band_Stop, "Engine3_HP_Needle_ThreeQ_Green_Band_Stop", Engine_Status_origin.name,
					"HP_Needle_ThreeQ_Green_Band_Stop",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine3pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1,4.197,5.0},
					}
				)
Add_Object_Image(Engine3_HP_Ref_Set_Mark, "Engine3_HP_Ref_Set_Mark", Engine_Status_origin.name,
					"HP_Ref_Set_Mark",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine3pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_HP_REF_SET_MARK",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"rotate_using_parameter",1, -1.0 },
					}
				)
-------------------------------------------------------------------------------------------------Engine3_TOset
Add_Object_Text(Engine3_5minTimerMin, "Engine3_5minTimerMin", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					346.5 + Engine3pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_TOset",
						"Engine3_5minWarn",
						"Engine3_5minTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"parameter_in_range",2, -0.1, 0.1},
						{"text_using_parameter",3,0},
					}
				)
				
Add_Object_Text(Engine3_5minTimerSeparator, "Engine3_5minTimerSeparator", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"CenterCenter",--objectalignment
					{"    :    "},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					396.5 + Engine3pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_TOset",
						"Engine3_5minWarn",
						"Engine3_5minTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"parameter_in_range",2, -0.1, 0.1},
						{"text_using_parameter",3,0},
					}
				)
Add_Object_Text(Engine3_5minTimerSec, "Engine3_5minTimerSec", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					446.5 + Engine3pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_TOset",
						"Engine3_5minWarn",
						"Engine3_5minTimerSec",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"parameter_in_range",2, -0.1, 0.1},
						{"text_using_parameter",3,0},
					}
				)
-------------------------------------------------------------------------------------------------Engine3_5minWarn
Add_Object_Text(Engine3_5minTimerMin, "Engine3_5minTimerMin", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					346.5 + Engine3pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_5minWarn",
						"Engine3_5minTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine3_5minTimerSeparator, "Engine3_5minTimerSeparator", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"CenterCenter",--objectalignment
					{"    :    "},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					396.5 + Engine3pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_5minWarn",
						"Engine3_5minTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine3_5minTimerSec, "Engine3_5minTimerSec", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					446.5 + Engine3pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_5minWarn",
						"Engine3_5minTimerSec",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
-------------------------------------------------------------------------------------------------Engine3_HP_Mask
Add_Object_Image(Engine3_HP_Mask, "Engine3_HP_Mask", Engine_Status_origin.name,
					"HP_Mask",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.0 + Engine3pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
					}
				)
Add_Object_Box(Engine3_SetTOBox, "Engine3_SetTOBox", Engine_Status_origin.name,
					MakeMaterial(nil,{255, 255, 255, 255}),--WHITE
					400.0,--imagepixelsizex
					170.0,--imagepixelsizey
					290.0 + Engine3pixelposx,--initpixelposx
					300.0,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_TOset",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
					}
				)
Add_Object_Text(Engine3_HP, "Engine3_HP", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine3pixelposx,--initpixelposx
					297.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_5minWarn",
						"Engine3_HP",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.1, 0.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine3_HP, "Engine3_HP", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine3pixelposx,--initpixelposx
					297.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_5minWarn",
						"Engine3_HP",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine3_MGT
				
Add_Object_Image(Engine3_MGT_Background, "Engine3_MGT_Background", Engine_Status_origin.name,
					"MGT_Background",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.0 + Engine3pixelposx,--initpixelposx
					1316.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
					}
				)
Add_Object_Image(Engine3_MGT_Needle, "Engine3_MGT_Needle", Engine_Status_origin.name,
					"HP_Needle",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine3pixelposx,--initpixelposx
					1316.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_MGT_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Text(Engine3_MGT, "Engine3_MGT", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine3pixelposx,--initpixelposx
					1151.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_MGT",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.5, 833.1},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Engine3_MGT, "Engine3_MGT", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine3pixelposx,--initpixelposx
					1151.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_MGT",
					},
					{--controllers
						{"opacity_using_parameter",01},
						{"parameter_in_range",1, 832.9, 852.1},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Engine3_MGT, "Engine3_MGT", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine3pixelposx,--initpixelposx
					1151.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_MGT",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 851.9, 1000},
						{"text_using_parameter",1,0},
					}
				)
				
------------------------------------------------------------------------------------------------------------Engine3_NG
				
Add_Object_Image(Engine3_NG_Background, "Engine3_NG_Background", Engine_Status_origin.name,
					"NG_Background",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.0 + Engine3pixelposx,--initpixelposx
					2204.3,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
					}
				)
Add_Object_Image(Engine3_NG_Needle, "Engine3_NG_Needle", Engine_Status_origin.name,
					"HP_Needle",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine3pixelposx,--initpixelposx
					2204.3,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_NG_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Text(Engine3_NG, "Engine3_NG", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine3pixelposx,--initpixelposx
					2020.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_NG",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine3_NP
				
Add_Object_Text(Engine3_NP, "Engine3_NP", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine3pixelposx + Engine3pixelposxP,--initpixelposx
					2761.4,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_NP",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine3_FF
				
Add_Object_Text(Engine3_FF, "Engine3_FF", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine3pixelposx + Engine3pixelposxP,--initpixelposx
					2998.0,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_FuelFlow",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine3_GPSI
				
Add_Object_Text(Engine3_GPSI, "Engine3_GPSI", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine3pixelposx + Engine3pixelposxP,--initpixelposx
					3343.3,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_GPSI",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine3_EPSI
				
Add_Object_Text(Engine3_EPSI, "Engine3_EPSI", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.1f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine3pixelposx + Engine3pixelposxP,--initpixelposx
					3561.9,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_EPSI",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine3_OILTEMP
				
Add_Object_Text(Engine3_OILTEMP, "Engine3_OILTEMP", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.1f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine3pixelposx + Engine3pixelposxP,--initpixelposx
					3768.9,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_OILTEMP",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine3_OilQty
				
Add_Object_Text(Engine3_OilQty, "Engine3_OilQty", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.1f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine3pixelposx + Engine3pixelposxP,--initpixelposx
					3969.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_OILQTY",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 4, 14.1},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Engine3_OilQty, "Engine3_OilQty", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%.1f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine3pixelposx + Engine3pixelposxP,--initpixelposx
					3969.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine3_OILQTY",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.5, 4},
						{"text_using_parameter",1,0},
					}
				)
------------------------------------------------------------------------------------------------------------------------------------------------ Engine4
local Engine4pixelposx = 3080
local Engine4pixelposxP = 270
------------------------------------------------------------------------------------------------------------Engine4_StartBox
Add_Object_Box(Engine4_StartBox, "Engine4_StartBox", Engine_Status_origin.name,
					MakeMaterial(nil,{255, 255, 255, 255}),--WHITE
					780.0,--imagepixelsizex
					4013.0,--imagepixelsizey
					510.1 + Engine4pixelposx,--initpixelposx
					2094.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_Startlight_Energized",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
					}
				)
Add_Object_Text(Engine4_StartTimerMin, "Engine4_StartTimerMin", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					346.5 + Engine4pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_Startlight_Energized",
						"Engine4_StartTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine4_StartTimerSeparator, "Engine4_StartTimerSeparator", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"CenterCenter",--objectalignment
					{"    :    "},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					396.5 + Engine4pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_Startlight_Energized",
						"Engine4_StartTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine4_StartTimerSec, "Engine4_StartTimerSec", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					446.5 + Engine4pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_Startlight_Energized",
						"Engine4_StartTimerSec",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine4_BETA, "Engine4_BETA", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"CenterCenter",--objectalignment
					{"BETA"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					476.5 + Engine4pixelposx,--initpixelposx
					901.0,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_Startlight_Energized",
						"Engine4BetaMode",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.1, 0.1},
						{"parameter_in_range",2, 0.95, 1.05},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine4_B, "Engine4_B", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"B"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					450.0 + Engine4pixelposx,--initpixelposx
					550.0,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_Startlight_Energized",
						"Engine4BetaReady",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.1, 0.1},
						{"parameter_in_range",2, 0.95, 1.05},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------------------------------------------Engine4_HP

Add_Object_Image(Engine4_HP_Background, "Engine4_HP_Background", Engine_Status_origin.name,
					"HP_Background",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.0 + Engine4pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
					}
				)
Add_Object_Image(Engine4_HP_Needle_Quarter_White_Band, "Engine4_HP_Needle_Quarter_White_Band", Engine_Status_origin.name,
					"HP_Needle_Quarter_White_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine4pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_5minWarn",
						"Engine4_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1, -0.1, 0.1},
						{"parameter_in_range",2,3.161,5.0},
						{"rotate_using_parameter",2, -1.0 },
					}
				)
Add_Object_Image(Engine4_HP_Needle_Quarter_Amber_Band, "Engine4_HP_Needle_Quarter_Amber_Band", Engine_Status_origin.name,
					"HP_Needle_Quarter_Amber_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine4pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_5minWarn",
						"Engine4_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1, 0.9, 1.1},
						{"parameter_in_range",2,3.082,5.0},
						{"rotate_using_parameter",2, -1.0 },
					}
				)
Add_Object_Image(Engine4_HP_Needle_Quarter_Green_Band, "Engine4_HP_Needle_Quarter_Green_Band", Engine_Status_origin.name,
					"HP_Needle_Quarter_Green_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine4pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1,-0.9,1.598},
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Image(Engine4_HP_Needle_Half_Green_Band, "Engine4_HP_Needle_Half_Green_Band", Engine_Status_origin.name,
					"HP_Needle_Half_Green_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine4pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1,1.598,3.161},
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Image(Engine4_HP_Needle_ThreeQ_Green_Band, "Engine4_HP_Needle_ThreeQ_Green_Band", Engine_Status_origin.name,
					"HP_Needle_ThreeQ_Green_Band",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine4pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1,3.161,4.197},
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Image(Engine4_HP_Needle_ThreeQ_Green_Band_Stop, "Engine4_HP_Needle_ThreeQ_Green_Band_Stop", Engine_Status_origin.name,
					"HP_Needle_ThreeQ_Green_Band_Stop",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine4pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_HP_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"parameter_in_range",1,4.197,5.0},
					}
				)
Add_Object_Image(Engine4_HP_Ref_Set_Mark, "Engine4_HP_Ref_Set_Mark", Engine_Status_origin.name,
					"HP_Ref_Set_Mark",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine4pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_HP_REF_SET_MARK",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"rotate_using_parameter",1, -1.0 },
					}
				)
-------------------------------------------------------------------------------------------------Engine4_TOset
Add_Object_Text(Engine4_5minTimerMin, "Engine4_5minTimerMin", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					346.5 + Engine4pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_TOset",
						"Engine4_5minWarn",
						"Engine4_5minTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"parameter_in_range",2, -0.1, 0.1},
						{"text_using_parameter",3,0},
					}
				)
				
Add_Object_Text(Engine4_5minTimerSeparator, "Engine4_5minTimerSeparator", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"CenterCenter",--objectalignment
					{"    :    "},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					396.5 + Engine4pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_TOset",
						"Engine4_5minWarn",
						"Engine4_5minTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"parameter_in_range",2, -0.1, 0.1},
						{"text_using_parameter",3,0},
					}
				)
Add_Object_Text(Engine4_5minTimerSec, "Engine4_5minTimerSec", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					446.5 + Engine4pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_TOset",
						"Engine4_5minWarn",
						"Engine4_5minTimerSec",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"parameter_in_range",2, -0.1, 0.1},
						{"text_using_parameter",3,0},
					}
				)
-------------------------------------------------------------------------------------------------Engine4_5minWarn
Add_Object_Text(Engine4_5minTimerMin, "Engine4_5minTimerMin", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					346.5 + Engine4pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_5minWarn",
						"Engine4_5minTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine4_5minTimerSeparator, "Engine4_5minTimerSeparator", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"CenterCenter",--objectalignment
					{"    :    "},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					396.5 + Engine4pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_5minWarn",
						"Engine4_5minTimerMin",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine4_5minTimerSec, "Engine4_5minTimerSec", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					446.5 + Engine4pixelposx,--initpixelposx
					905.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_5minWarn",
						"Engine4_5minTimerSec",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
-------------------------------------------------------------------------------------------------Engine4_HP_Mask
Add_Object_Image(Engine4_HP_Mask, "Engine4_HP_Mask", Engine_Status_origin.name,
					"HP_Mask",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.0 + Engine4pixelposx,--initpixelposx
					470.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
					}
				)
Add_Object_Box(Engine4_SetTOBox, "Engine4_SetTOBox", Engine_Status_origin.name,
					MakeMaterial(nil,{255, 255, 255, 255}),--WHITE
					400.0,--imagepixelsizex
					170.0,--imagepixelsizey
					290.0 + Engine4pixelposx,--initpixelposx
					300.0,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_TOset",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
					}
				)
Add_Object_Text(Engine4_HP, "Engine4_HP", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine4pixelposx,--initpixelposx
					297.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_5minWarn",
						"Engine4_HP",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.1, 0.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Engine4_HP, "Engine4_HP", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine4pixelposx,--initpixelposx
					297.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_5minWarn",
						"Engine4_HP",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine4_MGT
				
Add_Object_Image(Engine4_MGT_Background, "Engine4_MGT_Background", Engine_Status_origin.name,
					"MGT_Background",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.0 + Engine4pixelposx,--initpixelposx
					1316.5,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
					}
				)
Add_Object_Image(Engine4_MGT_Needle, "Engine4_MGT_Needle", Engine_Status_origin.name,
					"HP_Needle",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine4pixelposx,--initpixelposx
					1316.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_MGT_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Text(Engine4_MGT, "Engine4_MGT", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine4pixelposx,--initpixelposx
					1151.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_MGT",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.5, 833.1},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Engine4_MGT, "Engine4_MGT", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine4pixelposx,--initpixelposx
					1151.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_MGT",
					},
					{--controllers
						{"opacity_using_parameter",01},
						{"parameter_in_range",1, 832.9, 852.1},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Engine4_MGT, "Engine4_MGT", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine4pixelposx,--initpixelposx
					1151.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_MGT",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 851.9, 1000},
						{"text_using_parameter",1,0},
					}
				)
				
------------------------------------------------------------------------------------------------------------Engine4_NG
				
Add_Object_Image(Engine4_NG_Background, "Engine4_NG_Background", Engine_Status_origin.name,
					"NG_Background",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.0 + Engine4pixelposx,--initpixelposx
					2204.3,--initpixelposy
					{--params
						"hdd_002_brightness",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
					}
				)
Add_Object_Image(Engine4_NG_Needle, "Engine4_NG_Needle", Engine_Status_origin.name,
					"HP_Needle",
					690.0,--imagepixelsizex
					689.0,--imagepixelsizey
					518.5 + Engine4pixelposx,--initpixelposx
					2204.3,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_NG_NEEDLE",
					},
					{--controllers
						BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
						{"rotate_using_parameter",1, -1.0 },
					}
				)
Add_Object_Text(Engine4_NG, "Engine4_NG", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					418.8 + Engine4pixelposx,--initpixelposx
					2020.5,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_NG",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine4_NP
				
Add_Object_Text(Engine4_NP, "Engine4_NP", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine4pixelposx + Engine4pixelposxP,--initpixelposx
					2761.4,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_NP",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine4_FF
				
Add_Object_Text(Engine4_FF, "Engine4_FF", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine4pixelposx + Engine4pixelposxP,--initpixelposx
					2998.0,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_FuelFlow",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine4_GPSI
				
Add_Object_Text(Engine4_GPSI, "Engine4_GPSI", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.0f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine4pixelposx + Engine4pixelposxP,--initpixelposx
					3343.3,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_GPSI",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine4_EPSI
				
Add_Object_Text(Engine4_EPSI, "Engine4_EPSI", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.1f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine4pixelposx + Engine4pixelposxP,--initpixelposx
					3561.9,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_EPSI",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine4_OILTEMP
				
Add_Object_Text(Engine4_OILTEMP, "Engine4_OILTEMP", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.1f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine4pixelposx + Engine4pixelposxP,--initpixelposx
					3768.9,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_OILTEMP",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

------------------------------------------------------------------------------------------------------------Engine4_OilQty
				
Add_Object_Text(Engine4_OilQty, "Engine4_OilQty", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%.1f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine4pixelposx + Engine4pixelposxP,--initpixelposx
					3969.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_OILQTY",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 4, 14.1},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Engine4_OilQty, "Engine4_OilQty", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%.1f"},--format_value
					{0.008,0.008,  -0.0044, 0},--stringdefs_value
					510.5 + Engine4pixelposx + Engine4pixelposxP,--initpixelposx
					3969.8,--initpixelposy
					{--params
						"hdd_002_brightness",
						"Engine4_OILQTY",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.5, 4},
						{"text_using_parameter",1,0},
					}
				)
-------------------------------------------------------------------------------------------------------------ACAWS Messages
------------------------------------------------------------------------ ACAWS_11
Add_Object_Text(ACAWS_11_Pre, "ACAWS_11_Pre", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4350,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_11_Warn",
						"ACAWS_11_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_11_Post, "ACAWS_11_Post", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4350,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_11_Warn",
						"ACAWS_11_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_11_Pre, "ACAWS_11_Pre", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4350,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_11_Caut",
						"ACAWS_11_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_11_Post, "ACAWS_11_Post", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4350,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_11_Caut",
						"ACAWS_11_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_11_Pre, "ACAWS_11_Pre", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4350,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_11_Adv",
						"ACAWS_11_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_11_Post, "ACAWS_11_Post", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4350,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_11_Adv",
						"ACAWS_11_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------ ACAWS_12
Add_Object_Text(ACAWS_12_Pre, "ACAWS_12_Pre", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4490,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_12_Warn",
						"ACAWS_12_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_12_Post, "ACAWS_12_Post", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4490,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_12_Warn",
						"ACAWS_12_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_12_Pre, "ACAWS_12_Pre", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4490,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_12_Caut",
						"ACAWS_12_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_12_Post, "ACAWS_12_Post", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4490,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_12_Caut",
						"ACAWS_12_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_12_Pre, "ACAWS_12_Pre", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4490,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_12_Adv",
						"ACAWS_12_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_12_Post, "ACAWS_12_Post", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4490,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_12_Adv",
						"ACAWS_12_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------ ACAWS_13
Add_Object_Text(ACAWS_13_Pre, "ACAWS_13_Pre", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4630,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_13_Warn",
						"ACAWS_13_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_13_Post, "ACAWS_13_Post", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4630,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_13_Warn",
						"ACAWS_13_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_13_Pre, "ACAWS_13_Pre", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4630,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_13_Caut",
						"ACAWS_13_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_13_Post, "ACAWS_13_Post", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4630,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_13_Caut",
						"ACAWS_13_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_13_Pre, "ACAWS_13_Pre", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4630,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_13_Adv",
						"ACAWS_13_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_13_Post, "ACAWS_13_Post", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4630,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_13_Adv",
						"ACAWS_13_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------ ACAWS_14
Add_Object_Text(ACAWS_14_Pre, "ACAWS_14_Pre", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4770,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_14_Warn",
						"ACAWS_14_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_14_Post, "ACAWS_14_Post", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4770,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_14_Warn",
						"ACAWS_14_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_14_Pre, "ACAWS_14_Pre", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4770,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_14_Caut",
						"ACAWS_14_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_14_Post, "ACAWS_14_Post", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4770,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_14_Caut",
						"ACAWS_14_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_14_Pre, "ACAWS_14_Pre", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4770,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_14_Adv",
						"ACAWS_14_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_14_Post, "ACAWS_14_Post", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4770,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_14_Adv",
						"ACAWS_14_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------ ACAWS_15
Add_Object_Text(ACAWS_15_Pre, "ACAWS_15_Pre", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4910,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_15_Warn",
						"ACAWS_15_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_15_Post, "ACAWS_15_Post", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4910,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_15_Warn",
						"ACAWS_15_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_15_Pre, "ACAWS_15_Pre", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4910,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_15_Caut",
						"ACAWS_15_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_15_Post, "ACAWS_15_Post", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4910,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_15_Caut",
						"ACAWS_15_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_15_Pre, "ACAWS_15_Pre", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4910,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_15_Adv",
						"ACAWS_15_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_15_Post, "ACAWS_15_Post", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					4910,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_15_Adv",
						"ACAWS_15_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------ ACAWS_16
Add_Object_Text(ACAWS_16_Pre, "ACAWS_16_Pre", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5050,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_16_Warn",
						"ACAWS_16_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_16_Post, "ACAWS_16_Post", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5050,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_16_Warn",
						"ACAWS_16_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_16_Pre, "ACAWS_16_Pre", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5050,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_16_Caut",
						"ACAWS_16_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_16_Post, "ACAWS_16_Post", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5050,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_16_Caut",
						"ACAWS_16_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_16_Pre, "ACAWS_16_Pre", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5050,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_16_Adv",
						"ACAWS_16_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_16_Post, "ACAWS_16_Post", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5050,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_16_Adv",
						"ACAWS_16_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------ ACAWS_17
Add_Object_Text(ACAWS_17_Pre, "ACAWS_17_Pre", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5190,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_17_Warn",
						"ACAWS_17_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_17_Post, "ACAWS_17_Post", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5190,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_17_Warn",
						"ACAWS_17_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_17_Pre, "ACAWS_17_Pre", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5190,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_17_Caut",
						"ACAWS_17_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_17_Post, "ACAWS_17_Post", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5190,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_17_Caut",
						"ACAWS_17_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_17_Pre, "ACAWS_17_Pre", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5190,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_17_Adv",
						"ACAWS_17_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_17_Post, "ACAWS_17_Post", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5190,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_17_Adv",
						"ACAWS_17_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------ ACAWS_18
Add_Object_Text(ACAWS_18_Pre, "ACAWS_18_Pre", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5330,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_18_Warn",
						"ACAWS_18_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_18_Post, "ACAWS_18_Post", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5330,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_18_Warn",
						"ACAWS_18_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_18_Pre, "ACAWS_18_Pre", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5330,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_18_Caut",
						"ACAWS_18_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_18_Post, "ACAWS_18_Post", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5330,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_18_Caut",
						"ACAWS_18_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_18_Pre, "ACAWS_18_Pre", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5330,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_18_Adv",
						"ACAWS_18_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_18_Post, "ACAWS_18_Post", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					1340,--initpixelposx
					5330,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_18_Adv",
						"ACAWS_18_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------ ACAWS_21
Add_Object_Text(ACAWS_21_Pre, "ACAWS_21_Pre", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4350,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_21_Warn",
						"ACAWS_21_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_21_Post, "ACAWS_21_Post", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4350,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_21_Warn",
						"ACAWS_21_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_21_Pre, "ACAWS_21_Pre", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4350,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_21_Caut",
						"ACAWS_21_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_21_Post, "ACAWS_21_Post", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4350,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_21_Caut",
						"ACAWS_21_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_21_Pre, "ACAWS_21_Pre", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4350,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_21_Adv",
						"ACAWS_21_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_21_Post, "ACAWS_21_Post", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4350,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_21_Adv",
						"ACAWS_21_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------ ACAWS_22
Add_Object_Text(ACAWS_22_Pre, "ACAWS_22_Pre", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4490,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_22_Warn",
						"ACAWS_22_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_22_Post, "ACAWS_22_Post", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4490,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_22_Warn",
						"ACAWS_22_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_22_Pre, "ACAWS_22_Pre", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4490,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_22_Caut",
						"ACAWS_22_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_22_Post, "ACAWS_22_Post", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4490,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_22_Caut",
						"ACAWS_22_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_22_Pre, "ACAWS_22_Pre", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4490,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_22_Adv",
						"ACAWS_22_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_22_Post, "ACAWS_22_Post", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4490,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_22_Adv",
						"ACAWS_22_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------ ACAWS_23
Add_Object_Text(ACAWS_23_Pre, "ACAWS_23_Pre", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4630,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_23_Warn",
						"ACAWS_23_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_23_Post, "ACAWS_23_Post", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4630,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_23_Warn",
						"ACAWS_23_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_23_Pre, "ACAWS_23_Pre", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4630,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_23_Caut",
						"ACAWS_23_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_23_Post, "ACAWS_23_Post", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4630,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_23_Caut",
						"ACAWS_23_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_23_Pre, "ACAWS_23_Pre", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4630,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_23_Adv",
						"ACAWS_23_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_23_Post, "ACAWS_23_Post", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4630,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_23_Adv",
						"ACAWS_23_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------ ACAWS_24
Add_Object_Text(ACAWS_24_Pre, "ACAWS_24_Pre", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4770,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_24_Warn",
						"ACAWS_24_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_24_Post, "ACAWS_24_Post", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4770,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_24_Warn",
						"ACAWS_24_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_24_Pre, "ACAWS_24_Pre", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4770,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_24_Caut",
						"ACAWS_24_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_24_Post, "ACAWS_24_Post", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4770,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_24_Caut",
						"ACAWS_24_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_24_Pre, "ACAWS_24_Pre", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4770,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_24_Adv",
						"ACAWS_24_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_24_Post, "ACAWS_24_Post", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4770,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_24_Adv",
						"ACAWS_24_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------ ACAWS_25
Add_Object_Text(ACAWS_25_Pre, "ACAWS_25_Pre", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4910,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_25_Warn",
						"ACAWS_25_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_25_Post, "ACAWS_25_Post", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4910,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_25_Warn",
						"ACAWS_25_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_25_Pre, "ACAWS_25_Pre", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4910,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_25_Caut",
						"ACAWS_25_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_25_Post, "ACAWS_25_Post", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4910,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_25_Caut",
						"ACAWS_25_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_25_Pre, "ACAWS_25_Pre", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4910,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_25_Adv",
						"ACAWS_25_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_25_Post, "ACAWS_25_Post", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					4910,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_25_Adv",
						"ACAWS_25_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------ ACAWS_26
Add_Object_Text(ACAWS_26_Pre, "ACAWS_26_Pre", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5050,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_26_Warn",
						"ACAWS_26_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_26_Post, "ACAWS_26_Post", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5050,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_26_Warn",
						"ACAWS_26_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_26_Pre, "ACAWS_26_Pre", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5050,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_26_Caut",
						"ACAWS_26_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_26_Post, "ACAWS_26_Post", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5050,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_26_Caut",
						"ACAWS_26_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_26_Pre, "ACAWS_26_Pre", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5050,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_26_Adv",
						"ACAWS_26_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_26_Post, "ACAWS_26_Post", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5050,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_26_Adv",
						"ACAWS_26_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------ ACAWS_27
Add_Object_Text(ACAWS_27_Pre, "ACAWS_27_Pre", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5190,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_27_Warn",
						"ACAWS_27_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_27_Post, "ACAWS_27_Post", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5190,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_27_Warn",
						"ACAWS_27_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_27_Pre, "ACAWS_27_Pre", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5190,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_27_Caut",
						"ACAWS_27_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_27_Post, "ACAWS_27_Post", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5190,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_27_Caut",
						"ACAWS_27_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_27_Pre, "ACAWS_27_Pre", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5190,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_27_Adv",
						"ACAWS_27_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_27_Post, "ACAWS_27_Post", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5190,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_27_Adv",
						"ACAWS_27_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------ ACAWS_28
Add_Object_Text(ACAWS_28_Pre, "ACAWS_28_Pre", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5330,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_28_Warn",
						"ACAWS_28_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_28_Post, "ACAWS_28_Post", Engine_Status_origin.name,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5330,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_28_Warn",
						"ACAWS_28_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_28_Pre, "ACAWS_28_Pre", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5330,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_28_Caut",
						"ACAWS_28_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_28_Post, "ACAWS_28_Post", Engine_Status_origin.name,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5330,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_28_Caut",
						"ACAWS_28_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(ACAWS_28_Pre, "ACAWS_28_Pre", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5330,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_28_Adv",
						"ACAWS_28_Pre",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)

Add_Object_Text(ACAWS_28_Post, "ACAWS_28_Post", Engine_Status_origin.name,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.006,0.006,  -0.0025, 0},--stringdefs_value
					3450,--initpixelposx
					5330,--initpixelposy
					{--params
						"hdd_002_brightness",
						"ACAWS_28_Adv",
						"ACAWS_28_Post",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
------------------------------------------------------------------------ ACAWS vertical line
Add_Object_Text(Vert_line, "Vert_line", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"l"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2020,--initpixelposx
					4350,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Vert_line, "Vert_line", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"l"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2020,--initpixelposx
					4550,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Vert_line, "Vert_line", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"l"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2020,--initpixelposx
					4750,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Vert_line, "Vert_line", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"l"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2020,--initpixelposx
					4950,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Vert_line, "Vert_line", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"l"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2020,--initpixelposx
					5150,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Vert_line, "Vert_line", Engine_Status_origin.name,
					"font_Arial_green",--objectmaterial
					"CenterCenter",--objectalignment
					{"l"},--format_value
					{0.009,0.009,  -0.0040, 0},--stringdefs_value
					2020,--initpixelposx
					5350,--initpixelposy
					{--params
						"hdd_002_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
































