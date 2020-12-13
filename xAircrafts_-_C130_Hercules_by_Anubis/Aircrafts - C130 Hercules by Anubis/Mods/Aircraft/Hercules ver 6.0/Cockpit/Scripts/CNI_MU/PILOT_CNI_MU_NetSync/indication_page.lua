

dofile(LockOn_Options.script_path.."Display_definitions.lua")


-------------------------------------------------------------------------------PILOT_Network_Sync_Init

local Network_Sync_Init	         = CreateElement "ceSimple"
Network_Sync_Init.name 		     = "Network_Sync_Init"
Network_Sync_Init.init_pos        = {0,0}
Network_Sync_Init.element_params   = {
										"PILOT_Network_Sync_Init",
										   } 
Network_Sync_Init.controllers 	   = {
									{"parameter_in_range",0,0.9,1.1},
								}
Network_Sync_Init.collimated 		 = true
AddElement(Network_Sync_Init)

-------------------------------------------------------------------------------- Header
Add_Object_Text(Network_Sync, "Network_Sync", Network_Sync_Init.name, 1,
					"font_Arial_white",--objectmaterial
					"CenterCenter",--objectalignment
					{"NET SYNC"},--format_value
					{0.008,0.008,  0.0010, 0},--stringdefs_value
					300,--initpixelposx
					16,--initpixelposy
					{--params
						"PILOT_CNI_MU_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
-------------------------------------------------------------------------------- Left column
Add_Object_Text(Network_Sync, "Network_Sync", Network_Sync_Init.name, 1,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"< Start Command Server"},--format_value
					{0.007,0.007,  -0.0030, 0},--stringdefs_value
					10,--initpixelposx
					58,--initpixelposy
					{--params
						"PILOT_CNI_MU_brightness",
						"ComServerOnline",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, -0.1, 0.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Network_Sync, "Network_Sync", Network_Sync_Init.name, 1,
					"font_Arial_amber",--objectmaterial
					"LeftCenter",--objectalignment
					{"< Command Server Online"},--format_value
					{0.007,0.007,  -0.0030, 0},--stringdefs_value
					10,--initpixelposx
					58,--initpixelposy
					{--params
						"PILOT_CNI_MU_brightness",
						"ComServerOnline",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range",1, 0.9, 1.1},
						{"text_using_parameter",2,0},
					}
				)
Add_Object_Text(Network_Sync, "Network_Sync", Network_Sync_Init.name, 1,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"< Crew Member IP"},--format_value
					{0.007,0.007,  -0.0030, 0},--stringdefs_value
					10,--initpixelposx
					110,--initpixelposy
					{--params
						"PILOT_CNI_MU_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Network_Sync, "Network_Sync", Network_Sync_Init.name, 1,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.007,0.007,  -0.0030, 0},--stringdefs_value
					70,--initpixelposx
					162,--initpixelposy
					{--params
						"PILOT_CNI_MU_brightness",
						"Crew_Member_Public_IP_Address",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Network_Sync, "Network_Sync", Network_Sync_Init.name, 1,
					"font_Arial_cyan",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.007,0.007,  -0.0030, 0},--stringdefs_value
					70,--initpixelposx
					214,--initpixelposy
					{--params
						"PILOT_CNI_MU_brightness",
						"Crew_Member_Handle",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

Add_Object_Text(NetworkSyncMessage, "NetworkSyncMessage", Network_Sync_Init.name, 1,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.007,0.007,  -0.0038, 0},--stringdefs_value
					130,--initpixelposx
					318,--initpixelposy
					{--params
						"PILOT_CNI_MU_brightness",
						"NetsyncMessage",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
-------------------------------------------------------------------------------- Right column
--------------------------------------------------------------------------------Recall
Add_Object_Text(Network_Sync, "Network_Sync", Network_Sync_Init.name, 1,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"Recall >"},--format_value
					{0.007,0.007,  -0.0040, 0},--stringdefs_value
					565,--initpixelposx
					110,--initpixelposy
					{--params
						"PILOT_CNI_MU_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
--------------------------------------------------------------------------------Stop
Add_Object_Text(Network_Sync, "Network_Sync", Network_Sync_Init.name, 1,
					"font_Arial_white",--objectmaterial
					"RightCenter",--objectalignment
					{"Allstop >"},--format_value
					{0.007,0.007,  -0.0034, 0},--stringdefs_value
					565,--initpixelposx
					266,--initpixelposy
					{--params
						"PILOT_CNI_MU_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
-------------------------------------------------------------------------------PILOT_CNI_MU_KBD

local KBD_origin	         = CreateElement "ceSimple"
KBD_origin.name 		     = "KBD_origin"
KBD_origin.init_pos        = {0,0}
KBD_origin.element_params   = {
										"PILOT_Network_Sync",
										   } 
KBD_origin.controllers 	   = {
									{"parameter_in_range",0,0.9,1.1},
								}
KBD_origin.collimated 		 = true
AddElement(KBD_origin)

Add_Object_Text(KBD, "KBD", KBD_origin.name, 1,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"%s"},--format_value
					{0.007,0.007,  -0.0034, 0},--stringdefs_value
					10,--initpixelposx
					370,--initpixelposy
					{--params
						"PILOT_CNI_MU_brightness",
						"PILOT_CNI_MU_KBD_charval",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)

-------------------------------------------------------------------------------PILOT_Network_Sync_Recall
local Network_Sync_Recall	         = CreateElement "ceSimple"
Network_Sync_Recall.name 		     = "Network_Sync_Recall"
Network_Sync_Recall.init_pos        = {0,0}
Network_Sync_Recall.element_params   = {
										"PILOT_Network_Sync_Recall",
										   } 
Network_Sync_Recall.controllers 	   = {
									{"parameter_in_range", 0, 0.9, 1.1},
								}
Network_Sync_Recall.collimated 		 = true
AddElement(Network_Sync_Recall)

-------------------------------------------------------------------------------- Header
Add_Object_Text(Network_Sync, "Network_Sync", Network_Sync_Recall.name, 1,
					"font_Arial_white",--objectmaterial
					"CenterCenter",--objectalignment
					{"NET SYNC"},--format_value
					{0.008,0.008,  0.0010, 0},--stringdefs_value
					300,--initpixelposx
					16,--initpixelposy
					{--params
						"COPILOT_CNI_MU_brightness",
						"",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"text_using_parameter",1,0},
					}
				)
-------------------------------------------------------------------------------- Left column
Add_Object_Text(Network_Sync, "Network_Sync", Network_Sync_Recall.name, 1,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"< %s"},--format_value
					{0.007,0.007,  -0.0030, 0},--stringdefs_value
					10,--initpixelposx
					58,--initpixelposy
					{--params
						"PILOT_CNI_MU_brightness",
						"PILOT_Handle_1",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range", 1, 0.9, 1.1},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Network_Sync, "Network_Sync", Network_Sync_Recall.name, 1,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"< %s"},--format_value
					{0.007,0.007,  -0.0030, 0},--stringdefs_value
					10,--initpixelposx
					110,--initpixelposy
					{--params
						"PILOT_CNI_MU_brightness",
						"PILOT_Handle_2",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range", 1, 0.9, 1.1},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Network_Sync, "Network_Sync", Network_Sync_Recall.name, 1,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"< %s"},--format_value
					{0.007,0.007,  -0.0030, 0},--stringdefs_value
					10,--initpixelposx
					162,--initpixelposy
					{--params
						"PILOT_CNI_MU_brightness",
						"PILOT_Handle_3",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range", 1, 0.9, 1.1},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Network_Sync, "Network_Sync", Network_Sync_Recall.name, 1,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"< %s"},--format_value
					{0.007,0.007,  -0.0030, 0},--stringdefs_value
					10,--initpixelposx
					214,--initpixelposy
					{--params
						"PILOT_CNI_MU_brightness",
						"PILOT_Handle_4",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range", 1, 0.9, 1.1},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Network_Sync, "Network_Sync", Network_Sync_Recall.name, 1,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"< %s"},--format_value
					{0.007,0.007,  -0.0030, 0},--stringdefs_value
					10,--initpixelposx
					266,--initpixelposy
					{--params
						"PILOT_CNI_MU_brightness",
						"PILOT_Handle_5",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range", 1, 0.9, 1.1},
						{"text_using_parameter",1,0},
					}
				)
Add_Object_Text(Network_Sync, "Network_Sync", Network_Sync_Recall.name, 1,
					"font_Arial_white",--objectmaterial
					"LeftCenter",--objectalignment
					{"< %s"},--format_value
					{0.007,0.007,  -0.0030, 0},--stringdefs_value
					10,--initpixelposx
					318,--initpixelposy
					{--params
						"PILOT_CNI_MU_brightness",
						"PILOT_Handle_6",
					},
					{--controllers
						{"opacity_using_parameter",0},
						{"parameter_in_range", 1, 0.9, 1.1},
						{"text_using_parameter",1,0},
					}
				)


