

dofile(LockOn_Options.script_path.."Display_definitions.lua")

-------------------------------------------------------------------------------PILOT_AMU002_Main_Menu

local PILOT_AMU002_Main_Menu_origin	         = CreateElement "ceSimple"
PILOT_AMU002_Main_Menu_origin.name 		     = "PILOT_AMU002_Main_Menu_origin"
PILOT_AMU002_Main_Menu_origin.init_pos        = {0,0}
PILOT_AMU002_Main_Menu_origin.element_params   = {
								"PILOT_AMU002_Main_Menu",
										   } 
PILOT_AMU002_Main_Menu_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU002_Main_Menu_origin.collimated 		 = true
AddElement(PILOT_AMU002_Main_Menu_origin)

local PILOT_AMU002_Main_Menu	    = CreateElement "ceTexPoly" --this could be the text area on HUD
PILOT_AMU002_Main_Menu.name 		= "PILOT_AMU002_Main_Menu"
PILOT_AMU002_Main_Menu.material   = "AMU002_Main_Menu"
PILOT_AMU002_Main_Menu.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU002_Main_Menu.indices			= default_box_indices	
PILOT_AMU002_Main_Menu.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU002_Main_Menu.init_pos   = {0,0} 
PILOT_AMU002_Main_Menu.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU002_Main_Menu.controllers 	   = {
								BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU002_Main_Menu.collimated = true
PILOT_AMU002_Main_Menu.parent_element = PILOT_AMU002_Main_Menu_origin.name
PILOT_AMU002_Main_Menu.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU002_Main_Menu)

-------------------------------------------------------------------------------PILOT_AMU002_Range

local PILOT_AMU002_Range_origin	         = CreateElement "ceSimple"
PILOT_AMU002_Range_origin.name 		     = "PILOT_AMU002_Range_origin"
PILOT_AMU002_Range_origin.init_pos        = {0,0}
PILOT_AMU002_Range_origin.element_params   = {
								"PILOT_AMU002_Range",
										   } 
PILOT_AMU002_Range_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU002_Range_origin.collimated 		 = true
AddElement(PILOT_AMU002_Range_origin)

local PILOT_AMU002_Range	    = CreateElement "ceTexPoly" --this could be the text area on HUD
PILOT_AMU002_Range.name 		= "PILOT_AMU002_Range"
PILOT_AMU002_Range.material   = "AMU002_Range"
PILOT_AMU002_Range.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU002_Range.indices			= default_box_indices	
PILOT_AMU002_Range.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU002_Range.init_pos   = {0,0} 
PILOT_AMU002_Range.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU002_Range.controllers 	   = {
								BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU002_Range.collimated = true
PILOT_AMU002_Range.parent_element = PILOT_AMU002_Range_origin.name
PILOT_AMU002_Range.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU002_Range)

-------------------------------------------------------------------------------PILOT_AMU002_Overlays

local PILOT_AMU002_Overlays_origin	         = CreateElement "ceSimple"
PILOT_AMU002_Overlays_origin.name 		     = "PILOT_AMU002_Overlays_origin"
PILOT_AMU002_Overlays_origin.init_pos        = {0,0}
PILOT_AMU002_Overlays_origin.element_params   = {
								"PILOT_AMU002_Overlays",
										   } 
PILOT_AMU002_Overlays_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU002_Overlays_origin.collimated 		 = true
AddElement(PILOT_AMU002_Overlays_origin)

local PILOT_AMU002_Overlays	    = CreateElement "ceTexPoly" --this could be the text area on HUD
PILOT_AMU002_Overlays.name 		= "PILOT_AMU002_Overlays"
PILOT_AMU002_Overlays.material   = "AMU002_Overlays"
PILOT_AMU002_Overlays.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU002_Overlays.indices			= default_box_indices	
PILOT_AMU002_Overlays.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU002_Overlays.init_pos   = {0,0} 
PILOT_AMU002_Overlays.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU002_Overlays.controllers 	   = {
								BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU002_Overlays.collimated = true
PILOT_AMU002_Overlays.parent_element = PILOT_AMU002_Overlays_origin.name
PILOT_AMU002_Overlays.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU002_Overlays)

-------------------------------------------------------------------------------PILOT_AMU002_HDD_Pos

local PILOT_AMU002_HDD_Pos_origin	         = CreateElement "ceSimple"
PILOT_AMU002_HDD_Pos_origin.name 		     = "PILOT_AMU002_HDD_Pos_origin"
PILOT_AMU002_HDD_Pos_origin.init_pos        = {0,0}
PILOT_AMU002_HDD_Pos_origin.element_params   = {
								"PILOT_AMU002_HDD_Pos",
										   } 
PILOT_AMU002_HDD_Pos_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU002_HDD_Pos_origin.collimated 		 = true
AddElement(PILOT_AMU002_HDD_Pos_origin)

local PILOT_AMU002_HDD_Pos	    = CreateElement "ceTexPoly" --this could be the text area on HUD
PILOT_AMU002_HDD_Pos.name 		= "PILOT_AMU002_HDD_Pos"
PILOT_AMU002_HDD_Pos.material   = "AMU002_HDD_Pos"
PILOT_AMU002_HDD_Pos.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU002_HDD_Pos.indices			= default_box_indices	
PILOT_AMU002_HDD_Pos.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU002_HDD_Pos.init_pos   = {0,0} 
PILOT_AMU002_HDD_Pos.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU002_HDD_Pos.controllers 	   = {
								BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU002_HDD_Pos.collimated = true
PILOT_AMU002_HDD_Pos.parent_element = PILOT_AMU002_HDD_Pos_origin.name
PILOT_AMU002_HDD_Pos.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU002_HDD_Pos)

-------------------------------------------------------------------------------PILOT_AMU002_HDD_Pos_Checklists

local PILOT_AMU002_HDD_Pos_Checklists_origin	         = CreateElement "ceSimple"
PILOT_AMU002_HDD_Pos_Checklists_origin.name 		     = "PILOT_AMU002_HDD_Pos_Checklists_origin"
PILOT_AMU002_HDD_Pos_Checklists_origin.init_pos        = {0,0}
PILOT_AMU002_HDD_Pos_Checklists_origin.element_params   = {
								"PILOT_AMU002_HDD_Pos_Checklists",
										   } 
PILOT_AMU002_HDD_Pos_Checklists_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU002_HDD_Pos_Checklists_origin.collimated 		 = true
AddElement(PILOT_AMU002_HDD_Pos_Checklists_origin)

local PILOT_AMU002_HDD_Pos_Checklists	    = CreateElement "ceTexPoly" --this could be the text area on HUD
PILOT_AMU002_HDD_Pos_Checklists.name 		= "PILOT_AMU002_HDD_Pos_Checklists"
PILOT_AMU002_HDD_Pos_Checklists.material   = "AMU002_HDD_Pos_Checklists"
PILOT_AMU002_HDD_Pos_Checklists.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU002_HDD_Pos_Checklists.indices			= default_box_indices	
PILOT_AMU002_HDD_Pos_Checklists.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU002_HDD_Pos_Checklists.init_pos   = {0,0} 
PILOT_AMU002_HDD_Pos_Checklists.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU002_HDD_Pos_Checklists.controllers 	   = {
								BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU002_HDD_Pos_Checklists.collimated = true
PILOT_AMU002_HDD_Pos_Checklists.parent_element = PILOT_AMU002_HDD_Pos_Checklists_origin.name
PILOT_AMU002_HDD_Pos_Checklists.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU002_HDD_Pos_Checklists)

-------------------------------------------------------------------------------PILOT_AMU002_CDI

local PILOT_AMU002_CDI_origin	         = CreateElement "ceSimple"
PILOT_AMU002_CDI_origin.name 		     = "PILOT_AMU002_CDI_origin"
PILOT_AMU002_CDI_origin.init_pos        = {0,0}
PILOT_AMU002_CDI_origin.element_params   = {
								"PILOT_AMU002_CDI",
										   } 
PILOT_AMU002_CDI_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU002_CDI_origin.collimated 		 = true
AddElement(PILOT_AMU002_CDI_origin)

local PILOT_AMU002_CDI	    = CreateElement "ceTexPoly" --this could be the text area on HUD
PILOT_AMU002_CDI.name 		= "PILOT_AMU002_CDI"
PILOT_AMU002_CDI.material   = "AMU002_CDI"
PILOT_AMU002_CDI.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU002_CDI.indices			= default_box_indices	
PILOT_AMU002_CDI.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU002_CDI.init_pos   = {0,0} 
PILOT_AMU002_CDI.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU002_CDI.controllers 	   = {
								BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU002_CDI.collimated = true
PILOT_AMU002_CDI.parent_element = PILOT_AMU002_CDI_origin.name
PILOT_AMU002_CDI.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU002_CDI)

-------------------------------------------------------------------------------PILOT_AMU002_Waypoints_Select

local PILOT_AMU002_Waypoints_Select_origin	         = CreateElement "ceSimple"
PILOT_AMU002_Waypoints_Select_origin.name 		     = "PILOT_AMU002_Waypoints_Select_origin"
PILOT_AMU002_Waypoints_Select_origin.init_pos        = {0,0}
PILOT_AMU002_Waypoints_Select_origin.element_params   = {
								"PILOT_AMU002_Waypoints_Select",
										   } 
PILOT_AMU002_Waypoints_Select_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
PILOT_AMU002_Waypoints_Select_origin.collimated 		 = true
AddElement(PILOT_AMU002_Waypoints_Select_origin)

local PILOT_AMU002_Waypoints_Select	    = CreateElement "ceTexPoly" --this could be the text area on HUD
PILOT_AMU002_Waypoints_Select.name 		= "PILOT_AMU002_Waypoints_Select"
PILOT_AMU002_Waypoints_Select.material   = "AMU002_Waypoints_Select"
PILOT_AMU002_Waypoints_Select.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
PILOT_AMU002_Waypoints_Select.indices			= default_box_indices	
PILOT_AMU002_Waypoints_Select.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
PILOT_AMU002_Waypoints_Select.init_pos   = {0,0} 
PILOT_AMU002_Waypoints_Select.element_params   = {
							"PILOT_AMU_brightness",
						} 
PILOT_AMU002_Waypoints_Select.controllers 	   = {
								BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
PILOT_AMU002_Waypoints_Select.collimated = true
PILOT_AMU002_Waypoints_Select.parent_element = PILOT_AMU002_Waypoints_Select_origin.name
PILOT_AMU002_Waypoints_Select.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(PILOT_AMU002_Waypoints_Select)


