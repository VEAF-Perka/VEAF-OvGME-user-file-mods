

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


local Bleed_Air_origin	         = CreateElement "ceSimple"
Bleed_Air_origin.name 		     = "Bleed_Air_origin"
Bleed_Air_origin.init_pos        = {0,0}
-- Bleed_Air_origin.element_params   = {
								-- "Occupy_Battle_Station",
										   -- } 
-- Bleed_Air_origin.controllers 	   = {
								-- {"parameter_in_range",0,-0.1,0.1},
								-- }
AddElement(Bleed_Air_origin)

Add_Object_Text(Bleed_Air, "Bleed_Air", Bleed_Air_origin.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"__ _"},--format_value
					{0.009,0.009,  -0.0042, 0},--stringdefs_value
					-30.0,--initpixelposx
					200.0,--initpixelposy
					{--params
						"Bleed_Air_Pressure",
					},
					{--controllers
						{"text_using_parameter",0,0},
						{"parameter_in_range",0, -0.5, 1},
					}
				)

Add_Object_Text(Bleed_Air, "Bleed_Air", Bleed_Air_origin.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.1f"},--format_value
					{0.009,0.009,  -0.0042, 0},--stringdefs_value
					-30.0,--initpixelposx
					200.0,--initpixelposy
					{--params
						"Bleed_Air_Pressure",
					},
					{--controllers
						{"text_using_parameter",0,0},
						{"parameter_in_range",0, 1, 45},
					}
				)

































