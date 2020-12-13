

dofile(LockOn_Options.script_path.."Display_definitions.lua")
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


local APU_egt_origin	         = CreateElement "ceSimple"
APU_egt_origin.name 		     = "APU_egt_origin"
APU_egt_origin.init_pos        = {0,0}
AddElement(APU_egt_origin)

Add_Object_Text(APU_egt, "APU_egt", APU_egt_origin.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.009,0.009,  -0.0042, 0},--stringdefs_value
					-30.0,--initpixelposx
					200.0,--initpixelposy
					{--params
						"APU_EGT",
					},
					{--controllers
						{"text_using_parameter",0,0},
						{"parameter_in_range",0, -0.5, 900},
					}
				)
Add_Object_Text(APU_egt, "APU_egt", APU_egt_origin.name, 0,
					"font_Arial_red",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.009,0.009,  -0.0042, 0},--stringdefs_value
					-30.0,--initpixelposx
					200.0,--initpixelposy
					{--params
						"APU_EGT",
					},
					{--controllers
						{"text_using_parameter",0,0},
						{"parameter_in_range",0, 900, 9000},
					}
				)

































