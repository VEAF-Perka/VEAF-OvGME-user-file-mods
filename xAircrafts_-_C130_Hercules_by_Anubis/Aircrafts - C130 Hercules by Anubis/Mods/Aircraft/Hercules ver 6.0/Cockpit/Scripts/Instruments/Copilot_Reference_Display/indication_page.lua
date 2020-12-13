

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

local REFSETAirspeed002_origin	         = CreateElement "ceSimple"
REFSETAirspeed002_origin.name 		     = "REFSETAirspeed002_origin"
REFSETAirspeed002_origin.init_pos        = {0,0}
REFSETAirspeed002_origin.element_params   = {
								"COPILOT_REF_MODE",
										   } 
REFSETAirspeed002_origin.controllers 	   = {
								{"parameter_in_range",0,-0.1,0.1},
								}
AddElement(REFSETAirspeed002_origin)

Add_Object_Text(REFSETAirspeed002, "REFSETAirspeed002", REFSETAirspeed002_origin.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.010,0.010,  -0.0042, 0},--stringdefs_value
					160.0,--initpixelposx
					200.0,--initpixelposy
					{--params
						"COPILOT_RefAirspeedVal",
						-- "FlatscreenBrightness",
					},
					{--controllers
						{"text_using_parameter",0,0},
						-- {"opacity_using_parameter",1},
					}
				)

-- local REFSETAltitude002_origin	         = CreateElement "ceSimple"
-- REFSETAltitude002_origin.name 		     = "REFSETAltitude002_origin"
-- REFSETAltitude002_origin.init_pos        = {0,0}
-- REFSETAltitude002_origin.element_params   = {
								-- "COPILOT_REF_MODE",
										   -- } 
-- REFSETAltitude002_origin.controllers 	   = {
								-- {"parameter_in_range",0,1.1874,1.1876},
								-- }
-- AddElement(REFSETAltitude002_origin)

-- Add_Object_Text(REFSETAltitude002, "REFSETAltitude002", "REFSETAltitude002_origin",
					-- "font_Arial_green",--objectmaterial
					-- "RightCenter",--objectalignment
					-- {"%.0f"},--format_value
					-- {0.010,0.010,  -0.0042, 0},--stringdefs_value
					-- 0.9,--initpixelposx
					-- 0,--initpixelposy
					-- {--params
						-- "COPILOT_HudRefAltitudeCaretVal",
						-- "FlatscreenBrightness",
					-- },
					-- {--controllers
						-- {"text_using_parameter",0,0},
						-- {"opacity_using_parameter",1},
					-- }
				-- )

































