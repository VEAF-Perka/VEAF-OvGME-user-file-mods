

dofile(LockOn_Options.script_path.."Display_definitions.lua")

-------------------------------------------------------------------------------COPILOT_AMU002_Main_Menu

local COPILOT_AMU002_Main_Menu_origin	         = CreateElement "ceSimple"
COPILOT_AMU002_Main_Menu_origin.name 		     = "COPILOT_AMU002_Main_Menu_origin"
COPILOT_AMU002_Main_Menu_origin.init_pos        = {0,0}
COPILOT_AMU002_Main_Menu_origin.element_params   = {
								"COPILOT_AMU002_Main_Menu",
										   } 
COPILOT_AMU002_Main_Menu_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
COPILOT_AMU002_Main_Menu_origin.collimated 		 = true
AddElement(COPILOT_AMU002_Main_Menu_origin)

local COPILOT_AMU002_Main_Menu	    = CreateElement "ceTexPoly" --this could be the text area on HUD
COPILOT_AMU002_Main_Menu.name 		= "COPILOT_AMU002_Main_Menu"
COPILOT_AMU002_Main_Menu.material   = "AMU002_Main_Menu"
COPILOT_AMU002_Main_Menu.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
COPILOT_AMU002_Main_Menu.indices			= default_box_indices	
COPILOT_AMU002_Main_Menu.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
COPILOT_AMU002_Main_Menu.init_pos   = {0,0} 
COPILOT_AMU002_Main_Menu.element_params   = {
							"COPILOT_AMU_brightness",
						} 
COPILOT_AMU002_Main_Menu.controllers 	   = {
								BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
COPILOT_AMU002_Main_Menu.collimated = true
COPILOT_AMU002_Main_Menu.parent_element = COPILOT_AMU002_Main_Menu_origin.name
COPILOT_AMU002_Main_Menu.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(COPILOT_AMU002_Main_Menu)

-------------------------------------------------------------------------------COPILOT_AMU002_Range

local COPILOT_AMU002_Range_origin	         = CreateElement "ceSimple"
COPILOT_AMU002_Range_origin.name 		     = "COPILOT_AMU002_Range_origin"
COPILOT_AMU002_Range_origin.init_pos        = {0,0}
COPILOT_AMU002_Range_origin.element_params   = {
								"COPILOT_AMU002_Range",
										   } 
COPILOT_AMU002_Range_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
COPILOT_AMU002_Range_origin.collimated 		 = true
AddElement(COPILOT_AMU002_Range_origin)

local COPILOT_AMU002_Range	    = CreateElement "ceTexPoly" --this could be the text area on HUD
COPILOT_AMU002_Range.name 		= "COPILOT_AMU002_Range"
COPILOT_AMU002_Range.material   = "AMU002_Range"
COPILOT_AMU002_Range.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
COPILOT_AMU002_Range.indices			= default_box_indices	
COPILOT_AMU002_Range.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
COPILOT_AMU002_Range.init_pos   = {0,0} 
COPILOT_AMU002_Range.element_params   = {
							"COPILOT_AMU_brightness",
						} 
COPILOT_AMU002_Range.controllers 	   = {
								BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
COPILOT_AMU002_Range.collimated = true
COPILOT_AMU002_Range.parent_element = COPILOT_AMU002_Range_origin.name
COPILOT_AMU002_Range.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(COPILOT_AMU002_Range)

-------------------------------------------------------------------------------COPILOT_AMU002_Overlays

local COPILOT_AMU002_Overlays_origin	         = CreateElement "ceSimple"
COPILOT_AMU002_Overlays_origin.name 		     = "COPILOT_AMU002_Overlays_origin"
COPILOT_AMU002_Overlays_origin.init_pos        = {0,0}
COPILOT_AMU002_Overlays_origin.element_params   = {
								"COPILOT_AMU002_Overlays",
										   } 
COPILOT_AMU002_Overlays_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
COPILOT_AMU002_Overlays_origin.collimated 		 = true
AddElement(COPILOT_AMU002_Overlays_origin)

local COPILOT_AMU002_Overlays	    = CreateElement "ceTexPoly" --this could be the text area on HUD
COPILOT_AMU002_Overlays.name 		= "COPILOT_AMU002_Overlays"
COPILOT_AMU002_Overlays.material   = "AMU002_Overlays"
COPILOT_AMU002_Overlays.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
COPILOT_AMU002_Overlays.indices			= default_box_indices	
COPILOT_AMU002_Overlays.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
COPILOT_AMU002_Overlays.init_pos   = {0,0} 
COPILOT_AMU002_Overlays.element_params   = {
							"COPILOT_AMU_brightness",
						} 
COPILOT_AMU002_Overlays.controllers 	   = {
								BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
COPILOT_AMU002_Overlays.collimated = true
COPILOT_AMU002_Overlays.parent_element = COPILOT_AMU002_Overlays_origin.name
COPILOT_AMU002_Overlays.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(COPILOT_AMU002_Overlays)

-------------------------------------------------------------------------------COPILOT_AMU002_HDD_Pos

local COPILOT_AMU002_HDD_Pos_origin	         = CreateElement "ceSimple"
COPILOT_AMU002_HDD_Pos_origin.name 		     = "COPILOT_AMU002_HDD_Pos_origin"
COPILOT_AMU002_HDD_Pos_origin.init_pos        = {0,0}
COPILOT_AMU002_HDD_Pos_origin.element_params   = {
								"COPILOT_AMU002_HDD_Pos",
										   } 
COPILOT_AMU002_HDD_Pos_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
COPILOT_AMU002_HDD_Pos_origin.collimated 		 = true
AddElement(COPILOT_AMU002_HDD_Pos_origin)

local COPILOT_AMU002_HDD_Pos	    = CreateElement "ceTexPoly" --this could be the text area on HUD
COPILOT_AMU002_HDD_Pos.name 		= "COPILOT_AMU002_HDD_Pos"
COPILOT_AMU002_HDD_Pos.material   = "AMU002_HDD_Pos"
COPILOT_AMU002_HDD_Pos.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
COPILOT_AMU002_HDD_Pos.indices			= default_box_indices	
COPILOT_AMU002_HDD_Pos.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
COPILOT_AMU002_HDD_Pos.init_pos   = {0,0} 
COPILOT_AMU002_HDD_Pos.element_params   = {
							"COPILOT_AMU_brightness",
						} 
COPILOT_AMU002_HDD_Pos.controllers 	   = {
								BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
COPILOT_AMU002_HDD_Pos.collimated = true
COPILOT_AMU002_HDD_Pos.parent_element = COPILOT_AMU002_HDD_Pos_origin.name
COPILOT_AMU002_HDD_Pos.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(COPILOT_AMU002_HDD_Pos)

-------------------------------------------------------------------------------COPILOT_AMU002_HDD_Pos_Checklists

local COPILOT_AMU002_HDD_Pos_Checklists_origin	         = CreateElement "ceSimple"
COPILOT_AMU002_HDD_Pos_Checklists_origin.name 		     = "COPILOT_AMU002_HDD_Pos_Checklists_origin"
COPILOT_AMU002_HDD_Pos_Checklists_origin.init_pos        = {0,0}
COPILOT_AMU002_HDD_Pos_Checklists_origin.element_params   = {
								"COPILOT_AMU002_HDD_Pos_Checklists",
										   } 
COPILOT_AMU002_HDD_Pos_Checklists_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
COPILOT_AMU002_HDD_Pos_Checklists_origin.collimated 		 = true
AddElement(COPILOT_AMU002_HDD_Pos_Checklists_origin)

local COPILOT_AMU002_HDD_Pos_Checklists	    = CreateElement "ceTexPoly" --this could be the text area on HUD
COPILOT_AMU002_HDD_Pos_Checklists.name 		= "COPILOT_AMU002_HDD_Pos_Checklists"
COPILOT_AMU002_HDD_Pos_Checklists.material   = "AMU002_HDD_Pos_Checklists"
COPILOT_AMU002_HDD_Pos_Checklists.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
COPILOT_AMU002_HDD_Pos_Checklists.indices			= default_box_indices	
COPILOT_AMU002_HDD_Pos_Checklists.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
COPILOT_AMU002_HDD_Pos_Checklists.init_pos   = {0,0} 
COPILOT_AMU002_HDD_Pos_Checklists.element_params   = {
							"COPILOT_AMU_brightness",
						} 
COPILOT_AMU002_HDD_Pos_Checklists.controllers 	   = {
								BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
COPILOT_AMU002_HDD_Pos_Checklists.collimated = true
COPILOT_AMU002_HDD_Pos_Checklists.parent_element = COPILOT_AMU002_HDD_Pos_Checklists_origin.name
COPILOT_AMU002_HDD_Pos_Checklists.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(COPILOT_AMU002_HDD_Pos_Checklists)

-------------------------------------------------------------------------------PILOT_AMU002_Waypoints_Select

local COPILOT_AMU002_Waypoints_Select_origin	         = CreateElement "ceSimple"
COPILOT_AMU002_Waypoints_Select_origin.name 		     = "COPILOT_AMU002_Waypoints_Select_origin"
COPILOT_AMU002_Waypoints_Select_origin.init_pos        = {0,0}
COPILOT_AMU002_Waypoints_Select_origin.element_params   = {
								"COPILOT_AMU002_Waypoints_Select",
										   } 
COPILOT_AMU002_Waypoints_Select_origin.controllers 	   = {
								{"parameter_in_range",0,0.95,1.05},
								}
COPILOT_AMU002_Waypoints_Select_origin.collimated 		 = true
AddElement(COPILOT_AMU002_Waypoints_Select_origin)

local COPILOT_AMU002_Waypoints_Select	    = CreateElement "ceTexPoly" --this could be the text area on HUD
COPILOT_AMU002_Waypoints_Select.name 		= "COPILOT_AMU002_Waypoints_Select"
COPILOT_AMU002_Waypoints_Select.material   = "AMU002_Waypoints_Select"
COPILOT_AMU002_Waypoints_Select.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
COPILOT_AMU002_Waypoints_Select.indices			= default_box_indices	
COPILOT_AMU002_Waypoints_Select.tex_coords = {{0,0},{1,0},{1,1},{0,1}}
COPILOT_AMU002_Waypoints_Select.init_pos   = {0,0} 
COPILOT_AMU002_Waypoints_Select.element_params   = {
							"COPILOT_AMU_brightness",
						} 
COPILOT_AMU002_Waypoints_Select.controllers 	   = {
								BCont[1],BCont[2],BCont[3],BCont[4],BCont[5],BCont[6],BCont[7],BCont[8],BCont[9],BCont[10],
							}
COPILOT_AMU002_Waypoints_Select.collimated = true
COPILOT_AMU002_Waypoints_Select.parent_element = COPILOT_AMU002_Waypoints_Select_origin.name
COPILOT_AMU002_Waypoints_Select.blend_mode 	=  blend_mode.IBM_REGULAR
AddElement(COPILOT_AMU002_Waypoints_Select)


