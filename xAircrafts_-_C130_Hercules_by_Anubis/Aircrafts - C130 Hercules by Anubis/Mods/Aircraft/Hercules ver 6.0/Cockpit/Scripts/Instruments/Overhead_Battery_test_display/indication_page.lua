

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

--------------------------------------------------------------------------------------------------------------------------------------------Engine_Status

Add_Object_Text(ISO_DC_Volts, "ISO_DC_Volts", nil, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.1f"},--format_value
					{0.009,0.009,  -0.0042, 0},--stringdefs_value
					-30.0,--initpixelposx
					200.0,--initpixelposy
					{--params
						"Utility_battery_Test_state",
						"Avionics_battery_Test_state",
						"ISO_DC",
					},
					{--controllers
						{"parameter_in_range",0,-0.05,0.05},
						{"parameter_in_range",1,-0.05,0.05},
						{"parameter_in_range",2,22,28.05},
						{"text_using_parameter",2,0},
					}
				)

local Utility_battery_Volts_origin	         = CreateElement "ceSimple"
Utility_battery_Volts_origin.name 		     = "Utility_battery_Volts_origin"
Utility_battery_Volts_origin.init_pos        = {0,0}
Utility_battery_Volts_origin.element_params   = {
								"Utility_battery_Test_state",
										   } 
Utility_battery_Volts_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
AddElement(Utility_battery_Volts_origin)

Add_Object_Text(Utility_battery_Volts, "Utility_battery_Volts", Utility_battery_Volts_origin.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.1f"},--format_value
					{0.009,0.009,  -0.0042, 0},--stringdefs_value
					-30.0,--initpixelposx
					200.0,--initpixelposy
					{--params
						"Utility_battery",
						-- "FlatscreenBrightness",
					},
					{--controllers
						{"text_using_parameter",0,0},
						-- {"opacity_using_parameter",1},
					}
				)

local Avionics_battery_Volts_origin	         = CreateElement "ceSimple"
Avionics_battery_Volts_origin.name 		     = "Avionics_battery_Volts_origin"
Avionics_battery_Volts_origin.init_pos        = {0,0}
Avionics_battery_Volts_origin.element_params   = {
								"Avionics_battery_Test_state",
										   } 
Avionics_battery_Volts_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
AddElement(Avionics_battery_Volts_origin)

Add_Object_Text(Avionics_battery_Volts, "Avionics_battery_Volts", Avionics_battery_Volts_origin.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.1f"},--format_value
					{0.009,0.009,  -0.0042, 0},--stringdefs_value
					-30.0,--initpixelposx
					200.0,--initpixelposy
					{--params
						"Avionics_battery",
						-- "FlatscreenBrightness",
					},
					{--controllers
						{"text_using_parameter",0,0},
						-- {"opacity_using_parameter",1},
					}
				)

































