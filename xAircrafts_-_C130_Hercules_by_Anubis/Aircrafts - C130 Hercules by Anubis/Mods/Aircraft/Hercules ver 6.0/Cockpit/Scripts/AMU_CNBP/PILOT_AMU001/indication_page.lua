

dofile(LockOn_Options.script_path.."Display_definitions.lua")

-------------------------------------------------------------------------------PILOT_AMU001_Main_Menu

local PILOT_AMU001_Main_Menu_origin	         = CreateElement "ceSimple"
PILOT_AMU001_Main_Menu_origin.name 		     = "PILOT_AMU001_Main_Menu_origin"
PILOT_AMU001_Main_Menu_origin.init_pos        = {0,0}
PILOT_AMU001_Main_Menu_origin.element_params   = {
								"PILOT_AMU001_Main_Menu",
										   } 
PILOT_AMU001_Main_Menu_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU001_Main_Menu_origin.collimated 		 = true
AddElement(PILOT_AMU001_Main_Menu_origin)

local PILOT_AMU001_Main_Menu	    = CreateElement "ceTexPoly"
PILOT_AMU001_Main_Menu.name 		= "PILOT_AMU001_Main_Menu"
PILOT_AMU001_Main_Menu.material   = "AMU001_Main_Menu"
PILOT_AMU001_Main_Menu.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU001_Main_Menu.indices			= default_box_indices	
PILOT_AMU001_Main_Menu.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU001_Main_Menu.init_pos   = {0,0} 
PILOT_AMU001_Main_Menu.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU001_Main_Menu.controllers 	   = {
							BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU001_Main_Menu.collimated = true
PILOT_AMU001_Main_Menu.parent_element = PILOT_AMU001_Main_Menu_origin.name
PILOT_AMU001_Main_Menu.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU001_Main_Menu)

-------------------------------------------------------------------------------PILOT_AMU001_Dig_Map

local PILOT_AMU001_Dig_Map_origin	         = CreateElement "ceSimple"
PILOT_AMU001_Dig_Map_origin.name 		     = "PILOT_AMU001_Dig_Map_origin"
PILOT_AMU001_Dig_Map_origin.init_pos        = {0,0}
PILOT_AMU001_Dig_Map_origin.element_params   = {
								"PILOT_AMU001_Digital_Map",
										   } 
PILOT_AMU001_Dig_Map_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU001_Dig_Map_origin.collimated 		 = true
AddElement(PILOT_AMU001_Dig_Map_origin)

local PILOT_AMU001_Dig_Map	    = CreateElement "ceTexPoly"
PILOT_AMU001_Dig_Map.name 		= "PILOT_AMU001_Dig_Map"
PILOT_AMU001_Dig_Map.material   = "AMU001_Digital_Map"   
PILOT_AMU001_Dig_Map.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU001_Dig_Map.indices			= default_box_indices	
PILOT_AMU001_Dig_Map.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU001_Dig_Map.init_pos   = {0,0} 
PILOT_AMU001_Dig_Map.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU001_Dig_Map.controllers 	   = {
							BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU001_Dig_Map.collimated = true
PILOT_AMU001_Dig_Map.parent_element = PILOT_AMU001_Dig_Map_origin.name
PILOT_AMU001_Dig_Map.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU001_Dig_Map)

-------------------------------------------------------------------------------PILOT_AMU001_Nav_Select

local PILOT_AMU001_Nav_Select_origin	         = CreateElement "ceSimple"
PILOT_AMU001_Nav_Select_origin.name 		     = "PILOT_AMU001_Nav_Select_origin"
PILOT_AMU001_Nav_Select_origin.init_pos        = {0,0}
PILOT_AMU001_Nav_Select_origin.element_params   = {
								"PILOT_AMU001_Nav_Select",
										   } 
PILOT_AMU001_Nav_Select_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU001_Nav_Select_origin.collimated 		 = true
AddElement(PILOT_AMU001_Nav_Select_origin)

local PILOT_AMU001_Nav_Select	    = CreateElement "ceTexPoly"
PILOT_AMU001_Nav_Select.name 		= "PILOT_AMU001_Nav_Select"
PILOT_AMU001_Nav_Select.material   = "AMU001_Nav_Select"
PILOT_AMU001_Nav_Select.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU001_Nav_Select.indices			= default_box_indices	
PILOT_AMU001_Nav_Select.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU001_Nav_Select.init_pos   = {0,0} 
PILOT_AMU001_Nav_Select.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU001_Nav_Select.controllers 	   = {
							BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU001_Nav_Select.collimated = true
PILOT_AMU001_Nav_Select.parent_element = PILOT_AMU001_Nav_Select_origin.name
PILOT_AMU001_Nav_Select.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU001_Nav_Select)

-------------------------------------------------------------------------------PILOT_AMU001_Checklists

local PILOT_AMU001_Checklists_origin	         = CreateElement "ceSimple"
PILOT_AMU001_Checklists_origin.name 		     = "PILOT_AMU001_Checklists_origin"
PILOT_AMU001_Checklists_origin.init_pos        = {0,0}
PILOT_AMU001_Checklists_origin.element_params   = {
								"PILOT_AMU001_Checklists",
										   } 
PILOT_AMU001_Checklists_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU001_Checklists_origin.collimated 		 = true
AddElement(PILOT_AMU001_Checklists_origin)

local PILOT_AMU001_Checklists	    = CreateElement "ceTexPoly"
PILOT_AMU001_Checklists.name 		= "PILOT_AMU001_Checklists"
PILOT_AMU001_Checklists.material   = "AMU001_Checklists"
PILOT_AMU001_Checklists.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU001_Checklists.indices			= default_box_indices	
PILOT_AMU001_Checklists.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU001_Checklists.init_pos   = {0,0} 
PILOT_AMU001_Checklists.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU001_Checklists.controllers 	   = {
							BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU001_Checklists.collimated = true
PILOT_AMU001_Checklists.parent_element = PILOT_AMU001_Checklists_origin.name
PILOT_AMU001_Checklists.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU001_Checklists)

-------------------------------------------------------------------------------PILOT_AMU001_CAPS

local PILOT_AMU001_CAPS_origin	         = CreateElement "ceSimple"
PILOT_AMU001_CAPS_origin.name 		     = "PILOT_AMU001_CAPS_origin"
PILOT_AMU001_CAPS_origin.init_pos        = {0,0}
PILOT_AMU001_CAPS_origin.element_params   = {
								"PILOT_AMU001_CAPS",
										   } 
PILOT_AMU001_CAPS_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU001_CAPS_origin.collimated 		 = true
AddElement(PILOT_AMU001_CAPS_origin)

local PILOT_AMU001_CAPS	    = CreateElement "ceTexPoly"
PILOT_AMU001_CAPS.name 		= "PILOT_AMU001_CAPS"
PILOT_AMU001_CAPS.material   = "AMU001_CAPS"
PILOT_AMU001_CAPS.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU001_CAPS.indices			= default_box_indices	
PILOT_AMU001_CAPS.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU001_CAPS.init_pos   = {0,0} 
PILOT_AMU001_CAPS.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU001_CAPS.controllers 	   = {
							BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU001_CAPS.collimated = true
PILOT_AMU001_CAPS.parent_element = PILOT_AMU001_CAPS_origin.name
PILOT_AMU001_CAPS.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU001_CAPS)

-------------------------------------------------------------------------------PILOT_AMU001_CAPS_Battle_Circle

local PILOT_AMU001_CAPS_Battle_Circle_origin	         = CreateElement "ceSimple"
PILOT_AMU001_CAPS_Battle_Circle_origin.name 		     = "PILOT_AMU001_CAPS_Battle_Circle_origin"
PILOT_AMU001_CAPS_Battle_Circle_origin.init_pos        = {0,0}
PILOT_AMU001_CAPS_Battle_Circle_origin.element_params   = {
								"PILOT_AMU001_CAPS_Battle_Circle",
										   } 
PILOT_AMU001_CAPS_Battle_Circle_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU001_CAPS_Battle_Circle_origin.collimated 		 = true
AddElement(PILOT_AMU001_CAPS_Battle_Circle_origin)

local PILOT_AMU001_CAPS_Battle_Circle	    = CreateElement "ceTexPoly"
PILOT_AMU001_CAPS_Battle_Circle.name 		= "PILOT_AMU001_CAPS_Battle_Circle"
PILOT_AMU001_CAPS_Battle_Circle.material   = "AMU001_CAPS_Battle_Circle"
PILOT_AMU001_CAPS_Battle_Circle.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU001_CAPS_Battle_Circle.indices			= default_box_indices	
PILOT_AMU001_CAPS_Battle_Circle.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU001_CAPS_Battle_Circle.init_pos   = {0,0} 
PILOT_AMU001_CAPS_Battle_Circle.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU001_CAPS_Battle_Circle.controllers 	   = {
							BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU001_CAPS_Battle_Circle.collimated = true
PILOT_AMU001_CAPS_Battle_Circle.parent_element = PILOT_AMU001_CAPS_Battle_Circle_origin.name
PILOT_AMU001_CAPS_Battle_Circle.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU001_CAPS_Battle_Circle)

Add_Object_Text(CAPS_wpt, "CAPS_wpt", PILOT_AMU001_CAPS_Battle_Circle.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					370.0,--initpixelposx
					31.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"CAPS_Battle_Circle_Waypoint_nr",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(CAPS_Initiate, "CAPS_Initiate", PILOT_AMU001_CAPS_Battle_Circle.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"Initiated"},--format_value
					{0.007,0.007,  -0.004, 0},--stringdefs_value
					395.0,--initpixelposx
					31.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"",
						"CAPS_Battle_Circle_Initiate",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
						{"parameter_in_range",2,0.95,1.05},
					}
				)

Add_Object_Text(CAPS_distance, "CAPS_distance", PILOT_AMU001_CAPS_Battle_Circle.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.1f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					67.0+50.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"CAPS_Battle_Circle_Waypoint_horz_dist",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(CAPS_altitude, "CAPS_altitude", PILOT_AMU001_CAPS_Battle_Circle.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					110.0+50.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"CAPS_Battle_Circle_Waypoint_alt",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(CAPS_bearing, "CAPS_bearing", PILOT_AMU001_CAPS_Battle_Circle.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					157.0+50.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"CAPS_Battle_Circle_Waypoint_bearing",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
-------------------------------------------------------------------------------PILOT_AMU001_Waypoint1

local PILOT_AMU001_Waypoint1_origin	         = CreateElement "ceSimple"
PILOT_AMU001_Waypoint1_origin.name 		     = "PILOT_AMU001_Waypoint1_origin"
PILOT_AMU001_Waypoint1_origin.init_pos        = {0,0}
PILOT_AMU001_Waypoint1_origin.element_params   = {
								"PILOT_AMU001_Waypoint1",
										   } 
PILOT_AMU001_Waypoint1_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU001_Waypoint1_origin.collimated 		 = true
AddElement(PILOT_AMU001_Waypoint1_origin)

local PILOT_AMU001_Waypoint1	    = CreateElement "ceTexPoly"
PILOT_AMU001_Waypoint1.name 		= "PILOT_AMU001_Waypoint1"
PILOT_AMU001_Waypoint1.material   = "AMU001_Waypoint"
PILOT_AMU001_Waypoint1.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU001_Waypoint1.indices			= default_box_indices	
PILOT_AMU001_Waypoint1.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU001_Waypoint1.init_pos   = {0,0} 
PILOT_AMU001_Waypoint1.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU001_Waypoint1.controllers 	   = {
							BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU001_Waypoint1.collimated = true
PILOT_AMU001_Waypoint1.parent_element = PILOT_AMU001_Waypoint1_origin.name
PILOT_AMU001_Waypoint1.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU001_Waypoint1)



Add_Object_Text(Wpt1_number, "Wpt1_number", PILOT_AMU001_Waypoint1.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					340.0,--initpixelposx
					31.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"PILOT_Waypoint_nr",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt1_number_active, "Wpt1_number_active", PILOT_AMU001_Waypoint1.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"Active"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					380.0,--initpixelposx
					31.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"",
						"NAV_Waypoint_nr",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
						{"parameter_in_range",2,0.95,1.05},
					}
				)

Add_Object_Text(Wpt1_distance, "Wpt1_distance", PILOT_AMU001_Waypoint1.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.1f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					67.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint1_horz_dist",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt1_altitude, "Wpt1_altitude", PILOT_AMU001_Waypoint1.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					110.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint1_alt",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt1_bearing, "Wpt1_bearing", PILOT_AMU001_Waypoint1.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					157.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint1_bearing",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
				
Add_Object_Text(Wpt1_lat, "Wpt1_lat", PILOT_AMU001_Waypoint1.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					201.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint1_lat_dms",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt1_long, "Wpt1_long", PILOT_AMU001_Waypoint1.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					242.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint1_long_dms",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

-------------------------------------------------------------------------------PILOT_AMU001_Waypoint2

local PILOT_AMU001_Waypoint2_origin	         = CreateElement "ceSimple"
PILOT_AMU001_Waypoint2_origin.name 		     = "PILOT_AMU001_Waypoint2_origin"
PILOT_AMU001_Waypoint2_origin.init_pos        = {0,0}
PILOT_AMU001_Waypoint2_origin.element_params   = {
								"PILOT_AMU001_Waypoint2",
										   } 
PILOT_AMU001_Waypoint2_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU001_Waypoint2_origin.collimated 		 = true
AddElement(PILOT_AMU001_Waypoint2_origin)

local PILOT_AMU001_Waypoint2	    = CreateElement "ceTexPoly"
PILOT_AMU001_Waypoint2.name 		= "PILOT_AMU001_Waypoint2"
PILOT_AMU001_Waypoint2.material   = "AMU001_Waypoint"
PILOT_AMU001_Waypoint2.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU001_Waypoint2.indices			= default_box_indices	
PILOT_AMU001_Waypoint2.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU001_Waypoint2.init_pos   = {0,0} 
PILOT_AMU001_Waypoint2.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU001_Waypoint2.controllers 	   = {
							BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU001_Waypoint2.collimated = true
PILOT_AMU001_Waypoint2.parent_element = PILOT_AMU001_Waypoint2_origin.name
PILOT_AMU001_Waypoint2.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU001_Waypoint2)



Add_Object_Text(Wpt2_number, "Wpt2_number", PILOT_AMU001_Waypoint2.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					340.0,--initpixelposx
					31.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"PILOT_Waypoint_nr",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt2_number_active, "Wpt2_number_active", PILOT_AMU001_Waypoint2.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"Active"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					380.0,--initpixelposx
					31.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"",
						"NAV_Waypoint_nr",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
						{"parameter_in_range",2,1.95,2.05},
					}
				)

Add_Object_Text(Wpt2_distance, "Wpt2_distance", PILOT_AMU001_Waypoint2.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.1f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					67.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint2_horz_dist",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt2_altitude, "Wpt2_altitude", PILOT_AMU001_Waypoint2.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					110.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint2_alt",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt2_bearing, "Wpt2_bearing", PILOT_AMU001_Waypoint2.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					157.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint2_bearing",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
				
Add_Object_Text(Wpt2_lat, "Wpt2_lat", PILOT_AMU001_Waypoint2.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					201.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint2_lat_dms",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt2_long, "Wpt2_long", PILOT_AMU001_Waypoint2.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					242.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint2_long_dms",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

-------------------------------------------------------------------------------PILOT_AMU001_Waypoint3

local PILOT_AMU001_Waypoint3_origin	         = CreateElement "ceSimple"
PILOT_AMU001_Waypoint3_origin.name 		     = "PILOT_AMU001_Waypoint3_origin"
PILOT_AMU001_Waypoint3_origin.init_pos        = {0,0}
PILOT_AMU001_Waypoint3_origin.element_params   = {
								"PILOT_AMU001_Waypoint3",
										   } 
PILOT_AMU001_Waypoint3_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU001_Waypoint3_origin.collimated 		 = true
AddElement(PILOT_AMU001_Waypoint3_origin)

local PILOT_AMU001_Waypoint3	    = CreateElement "ceTexPoly"
PILOT_AMU001_Waypoint3.name 		= "PILOT_AMU001_Waypoint3"
PILOT_AMU001_Waypoint3.material   = "AMU001_Waypoint"
PILOT_AMU001_Waypoint3.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU001_Waypoint3.indices			= default_box_indices	
PILOT_AMU001_Waypoint3.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU001_Waypoint3.init_pos   = {0,0} 
PILOT_AMU001_Waypoint3.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU001_Waypoint3.controllers 	   = {
							BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU001_Waypoint3.collimated = true
PILOT_AMU001_Waypoint3.parent_element = PILOT_AMU001_Waypoint3_origin.name
PILOT_AMU001_Waypoint3.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU001_Waypoint3)



Add_Object_Text(Wpt3_number, "Wpt3_number", PILOT_AMU001_Waypoint3.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					340.0,--initpixelposx
					31.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"PILOT_Waypoint_nr",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt3_number_active, "Wpt3_number_active", PILOT_AMU001_Waypoint3.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"Active"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					380.0,--initpixelposx
					31.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"",
						"NAV_Waypoint_nr",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
						{"parameter_in_range",2,2.95,3.05},
					}
				)

Add_Object_Text(Wpt3_distance, "Wpt3_distance", PILOT_AMU001_Waypoint3.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.1f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					67.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint3_horz_dist",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt3_altitude, "Wpt3_altitude", PILOT_AMU001_Waypoint3.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					110.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint3_alt",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt3_bearing, "Wpt3_bearing", PILOT_AMU001_Waypoint3.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					157.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint3_bearing",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
				
Add_Object_Text(Wpt3_lat, "Wpt3_lat", PILOT_AMU001_Waypoint3.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					201.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint3_lat_dms",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt3_long, "Wpt3_long", PILOT_AMU001_Waypoint3.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					242.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint3_long_dms",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

-------------------------------------------------------------------------------PILOT_AMU001_Waypoint4

local PILOT_AMU001_Waypoint4_origin	         = CreateElement "ceSimple"
PILOT_AMU001_Waypoint4_origin.name 		     = "PILOT_AMU001_Waypoint4_origin"
PILOT_AMU001_Waypoint4_origin.init_pos        = {0,0}
PILOT_AMU001_Waypoint4_origin.element_params   = {
								"PILOT_AMU001_Waypoint4",
										   } 
PILOT_AMU001_Waypoint4_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU001_Waypoint4_origin.collimated 		 = true
AddElement(PILOT_AMU001_Waypoint4_origin)

local PILOT_AMU001_Waypoint4	    = CreateElement "ceTexPoly"
PILOT_AMU001_Waypoint4.name 		= "PILOT_AMU001_Waypoint4"
PILOT_AMU001_Waypoint4.material   = "AMU001_Waypoint"
PILOT_AMU001_Waypoint4.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU001_Waypoint4.indices			= default_box_indices	
PILOT_AMU001_Waypoint4.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU001_Waypoint4.init_pos   = {0,0} 
PILOT_AMU001_Waypoint4.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU001_Waypoint4.controllers 	   = {
							BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU001_Waypoint4.collimated = true
PILOT_AMU001_Waypoint4.parent_element = PILOT_AMU001_Waypoint4_origin.name
PILOT_AMU001_Waypoint4.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU001_Waypoint4)



Add_Object_Text(Wpt4_number, "Wpt4_number", PILOT_AMU001_Waypoint4.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					340.0,--initpixelposx
					31.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"PILOT_Waypoint_nr",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt4_number_active, "Wpt4_number_active", PILOT_AMU001_Waypoint4.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"Active"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					380.0,--initpixelposx
					31.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"",
						"NAV_Waypoint_nr",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
						{"parameter_in_range",2,3.95,4.05},
					}
				)

Add_Object_Text(Wpt4_distance, "Wpt4_distance", PILOT_AMU001_Waypoint4.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.1f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					67.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint4_horz_dist",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt4_altitude, "Wpt4_altitude", PILOT_AMU001_Waypoint4.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					110.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint4_alt",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt4_bearing, "Wpt4_bearing", PILOT_AMU001_Waypoint4.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					157.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint4_bearing",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
				
Add_Object_Text(Wpt4_lat, "Wpt4_lat", PILOT_AMU001_Waypoint4.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					201.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint4_lat_dms",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt4_long, "Wpt4_long", PILOT_AMU001_Waypoint4.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					242.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint4_long_dms",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

-------------------------------------------------------------------------------PILOT_AMU001_Waypoint5

local PILOT_AMU001_Waypoint5_origin	         = CreateElement "ceSimple"
PILOT_AMU001_Waypoint5_origin.name 		     = "PILOT_AMU001_Waypoint5_origin"
PILOT_AMU001_Waypoint5_origin.init_pos        = {0,0}
PILOT_AMU001_Waypoint5_origin.element_params   = {
								"PILOT_AMU001_Waypoint5",
										   } 
PILOT_AMU001_Waypoint5_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU001_Waypoint5_origin.collimated 		 = true
AddElement(PILOT_AMU001_Waypoint5_origin)

local PILOT_AMU001_Waypoint5	    = CreateElement "ceTexPoly"
PILOT_AMU001_Waypoint5.name 		= "PILOT_AMU001_Waypoint5"
PILOT_AMU001_Waypoint5.material   = "AMU001_Waypoint"
PILOT_AMU001_Waypoint5.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU001_Waypoint5.indices			= default_box_indices	
PILOT_AMU001_Waypoint5.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU001_Waypoint5.init_pos   = {0,0} 
PILOT_AMU001_Waypoint5.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU001_Waypoint5.controllers 	   = {
							BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU001_Waypoint5.collimated = true
PILOT_AMU001_Waypoint5.parent_element = PILOT_AMU001_Waypoint5_origin.name
PILOT_AMU001_Waypoint5.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU001_Waypoint5)



Add_Object_Text(Wpt5_number, "Wpt5_number", PILOT_AMU001_Waypoint5.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					340.0,--initpixelposx
					31.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"PILOT_Waypoint_nr",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt5_number_active, "Wpt5_number_active", PILOT_AMU001_Waypoint5.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"Active"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					380.0,--initpixelposx
					31.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"",
						"NAV_Waypoint_nr",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
						{"parameter_in_range",2,4.95,5.05},
					}
				)

Add_Object_Text(Wpt5_distance, "Wpt5_distance", PILOT_AMU001_Waypoint5.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.1f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					67.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint5_horz_dist",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt5_altitude, "Wpt5_altitude", PILOT_AMU001_Waypoint5.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					110.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint5_alt",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt5_bearing, "Wpt5_bearing", PILOT_AMU001_Waypoint5.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					157.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint5_bearing",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
				
Add_Object_Text(Wpt5_lat, "Wpt5_lat", PILOT_AMU001_Waypoint5.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					201.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint5_lat_dms",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt5_long, "Wpt5_long", PILOT_AMU001_Waypoint5.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					242.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint5_long_dms",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

-------------------------------------------------------------------------------PILOT_AMU001_Waypoint6

local PILOT_AMU001_Waypoint6_origin	         = CreateElement "ceSimple"
PILOT_AMU001_Waypoint6_origin.name 		     = "PILOT_AMU001_Waypoint6_origin"
PILOT_AMU001_Waypoint6_origin.init_pos        = {0,0}
PILOT_AMU001_Waypoint6_origin.element_params   = {
								"PILOT_AMU001_Waypoint6",
										   } 
PILOT_AMU001_Waypoint6_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU001_Waypoint6_origin.collimated 		 = true
AddElement(PILOT_AMU001_Waypoint6_origin)

local PILOT_AMU001_Waypoint6	    = CreateElement "ceTexPoly"
PILOT_AMU001_Waypoint6.name 		= "PILOT_AMU001_Waypoint6"
PILOT_AMU001_Waypoint6.material   = "AMU001_Waypoint"
PILOT_AMU001_Waypoint6.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU001_Waypoint6.indices			= default_box_indices	
PILOT_AMU001_Waypoint6.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU001_Waypoint6.init_pos   = {0,0} 
PILOT_AMU001_Waypoint6.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU001_Waypoint6.controllers 	   = {
							BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU001_Waypoint6.collimated = true
PILOT_AMU001_Waypoint6.parent_element = PILOT_AMU001_Waypoint6_origin.name
PILOT_AMU001_Waypoint6.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU001_Waypoint6)



Add_Object_Text(Wpt6_number, "Wpt6_number", PILOT_AMU001_Waypoint6.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					340.0,--initpixelposx
					31.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"PILOT_Waypoint_nr",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt6_number_active, "Wpt6_number_active", PILOT_AMU001_Waypoint6.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"Active"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					380.0,--initpixelposx
					31.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"",
						"NAV_Waypoint_nr",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
						{"parameter_in_range",2,5.95,6.05},
					}
				)

Add_Object_Text(Wpt6_distance, "Wpt6_distance", PILOT_AMU001_Waypoint6.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.1f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					67.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint6_horz_dist",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt6_altitude, "Wpt6_altitude", PILOT_AMU001_Waypoint6.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					110.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint6_alt",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt6_bearing, "Wpt6_bearing", PILOT_AMU001_Waypoint6.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					157.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint6_bearing",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
				
Add_Object_Text(Wpt6_lat, "Wpt6_lat", PILOT_AMU001_Waypoint6.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					201.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint6_lat_dms",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(Wpt6_long, "Wpt6_long", PILOT_AMU001_Waypoint6.name, 0,
					"font_Arial_green",--objectmaterial
					"LeftCenter",--objectalignment
					{"%.0f"},--format_value
					{0.007,0.007,  -0.003, 0},--stringdefs_value
					350.0,--initpixelposx
					242.0,--initpixelposy
					{--params
						"PILOT_AMU_brightness",
						"Waypoint6_long_dms",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)













