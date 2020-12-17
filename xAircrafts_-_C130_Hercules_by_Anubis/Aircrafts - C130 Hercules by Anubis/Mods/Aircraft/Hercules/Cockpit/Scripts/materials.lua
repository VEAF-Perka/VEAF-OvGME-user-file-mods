
dofile(LockOn_Options.script_path.."fonts.lua")

materials = {}
fonts = {}
textures = {}

-------materials-------
materials["green"]	= {0, 255, 0, 255}
materials["white"]	= {255, 255, 255, 255}
materials["cyan"]	= {0, 255, 255, 255}
materials["amber"]	= {255, 194, 0, 255}
materials["red"]	= {255, 0, 0, 255}
materials["black"]	= {0, 0, 0, 255}

-------FONTS----------

fonts["font_HUD_green"]					= {fontdescription["font_HUD"], 10, materials["green"]}
fonts["font_Arial_white"]				= {fontdescription["font_Arial"], 10, materials["white"]}
fonts["font_Arial_green"]				= {fontdescription["font_Arial"], 10, materials["green"]}
fonts["font_Arial_cyan"]				= {fontdescription["font_Arial"], 10, materials["cyan"]}
fonts["font_Bold_Arial_green"]				= {fontdescription["Hercules_TPOD_font"], 10, materials["green"]}
fonts["font_Bold_Arial_cyan"]				= {fontdescription["Hercules_TPOD_font"], 10, materials["cyan"]}
fonts["font_Arial_green_background"]				= {fontdescription["font_Arial_background"], 10, materials["green"]}
fonts["font_Arial_amber"]				= {fontdescription["font_Arial"], 10, materials["amber"]}
fonts["font_Arial_red"]					= {fontdescription["font_Arial"], 10, materials["red"]}
fonts["font_Arial_black"]					= {fontdescription["font_Arial"], 10, materials["black"]}

-------TEXTURES-------

-------HUD-------
textures["AirspeedAltitude_caret"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_AirspeedAltitude_caret.dds", materials["green"]}
textures["V1"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_V1.dds", materials["green"]}
textures["Vr"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_Vr.dds", materials["green"]}
textures["Vap"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_Vap.dds", materials["green"]}
textures["Vs"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_Vs.dds", materials["green"]}
textures["AirspeedAltitude_back"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_AirspeedAltitude_back.dds", materials["green"]}
textures["AirspeedAltitude_pointer"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_AirspeedAltitude_pointer.dds", materials["green"]}
textures["WindIndicator"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_WindIndicator.dds", materials["green"]}
textures["HeadingBracket"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_HeadingBracket.dds", materials["green"]}
textures["HUD_Heading_Tape"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_HUD_Heading_Tape.tga", materials["green"]}
textures["HudWaterline"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_HudWaterline.dds", materials["green"]}
textures["HudHorizonLine"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_HudHorizonLine.dds", materials["green"]}
textures["HudGostHorizonLine"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_HudGostHorizonLine.dds", materials["green"]}
textures["HudLadderPositive"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_HudLadderPositive.dds", materials["green"]}
textures["HudLadderNegative"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_HudLadderNegative.dds", materials["green"]}
textures["CDM"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_CDM.dds", materials["green"]}
textures["CDM_X"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_CDM_X.dds", materials["green"]}
textures["GhostFPM"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_GhostFPM.dds", materials["green"]}
textures["GhostFPM_X"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_GhostFPM_X.dds", materials["green"]}
textures["Ref_Airspeed_Error_Cue"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_Ref_Airspeed_Error_Cue.dds", materials["green"]}
-- textures["Ref_Airspeed_Error_Cue_Backward"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_Ref_Airspeed_Error_Cue_Backward.dds", materials["green"]}
textures["EnergyCue"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_EnergyCue.dds", materials["green"]}
textures["EnergyCueAT"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_EnergyCueAT.dds", materials["green"]}
textures["SideForceIndicator"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_SideForceIndicator.dds", materials["green"]}
textures["SideSlipIndicator"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_SideSlipIndicator.dds", materials["green"]}
textures["BankAngleScale"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_BankAngleScale.dds", materials["green"]}
textures["BankAngleIndicator"]		= {LockOn_Options.script_path.."../Resources/HUD/Herc_BankAngleIndicator.dds", materials["green"]}

-------HDD-------
textures["HP_Needle"] = {LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Needle.dds", materials["green"]}
textures["HP_Needle_Quarter_Green_Band"] = {LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Needle_Quarter_Green_Band.dds", materials["green"]}
textures["HP_Needle_Half_Green_Band"] = {LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Needle_Half_Green_Band.dds", materials["green"]}
textures["HP_Needle_ThreeQ_Green_Band"] = {LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Needle_ThreeQ_Green_Band.dds", materials["green"]}
textures["HP_Needle_ThreeQ_Green_Band_Stop"] = {LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Needle_ThreeQ_Green_Band_Stop.dds", materials["green"]}
textures["HP_Needle_Quarter_White_Band"] = {LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Needle_Quarter_White_Band.dds", materials["green"]}
textures["HP_Needle_Quarter_Amber_Band"] = {LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Needle_Quarter_Amber_Band.dds", materials["green"]}
textures["HP_Mask"] = {LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Mask.dds", materials["green"]}
textures["HP_Background"]		= {LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Background.dds", materials["green"]}
textures["HP_Ref_Set_Mark"]		= {LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Ref_Set_Mark.dds", materials["green"]}
textures["MGT_Background"]		= {LockOn_Options.script_path.."../Resources/HDD/Herc_MGT_Background.dds", materials["green"]}
textures["NG_Background"]		= {LockOn_Options.script_path.."../Resources/HDD/Herc_NG_Background.dds", materials["green"]}
textures["Flight_Data"]		= {LockOn_Options.script_path.."../Resources/HDD/Herc_Flight_Data.dds", materials["green"]}
textures["Checklist_After_Landing"]		= {LockOn_Options.script_path.."../Resources/HDD/Herc_Checklist_After_Landing.dds", materials["green"]}
textures["Checklist_After_Takeoff"]		= {LockOn_Options.script_path.."../Resources/HDD/Herc_Checklist_After_Takeoff.dds", materials["green"]}
textures["Checklist_Before_Landing"]		= {LockOn_Options.script_path.."../Resources/HDD/Herc_Checklist_Before_Landing.dds", materials["green"]}
textures["Checklist_Before_Takeoff"]		= {LockOn_Options.script_path.."../Resources/HDD/Herc_Checklist_Before_Takeoff.dds", materials["green"]}
textures["Checklist_Engine_Start"]		= {LockOn_Options.script_path.."../Resources/HDD/Herc_Checklist_Engine_Start.dds", materials["green"]}
textures["Checklist_Power_Up"]		= {LockOn_Options.script_path.."../Resources/HDD/Herc_Checklist_Power_Up.dds", materials["green"]}
textures["Checklist_Shutdown"]		= {LockOn_Options.script_path.."../Resources/HDD/Herc_Checklist_Shutdown.dds", materials["green"]}
textures["DigMap_objects"]		= {LockOn_Options.script_path.."../Resources/HDD/Herc_DigMap_indication.tga", materials["black"]}
textures["el_own_ship"]		= {LockOn_Options.script_path.."../Resources/HDD/Herc_DigMap_indication.tga", materials["green"]}
textures["flight_plan_line"]		= {nil, materials["red"]}
textures["PFD_Background"]		= {LockOn_Options.script_path.."../Resources/HDD/Herc_PFD_Background.dds", materials["white"]}
textures["System_Status"]		= {LockOn_Options.script_path.."../Resources/HDD/Herc_System_Status.dds", materials["green"]}
-------AMU-------
textures["AMU001_Main_Menu"]		= {LockOn_Options.script_path.."../Resources/AMU/Herc_AMU001_Main_Menu.dds", materials["white"]}
textures["AMU001_Digital_Map"]		= {LockOn_Options.script_path.."../Resources/AMU/Herc_AMU001_Digital_Map.dds", materials["white"]}
textures["AMU001_Nav_Select"]		= {LockOn_Options.script_path.."../Resources/AMU/Herc_AMU001_Nav_Select.dds", materials["white"]}
textures["AMU001_Checklists"]		= {LockOn_Options.script_path.."../Resources/AMU/Herc_AMU001_Checklists.dds", materials["white"]}
textures["AMU001_CAPS"]		= {LockOn_Options.script_path.."../Resources/AMU/Herc_AMU001_CAPS.dds", materials["white"]}
textures["AMU001_CAPS_Battle_Circle"]		= {LockOn_Options.script_path.."../Resources/AMU/Herc_AMU001_CAPS_Battle_Circle.dds", materials["white"]}
textures["AMU002_Main_Menu"]		= {LockOn_Options.script_path.."../Resources/AMU/Herc_AMU002_Main_Menu.dds", materials["white"]}
textures["AMU002_Range"]		= {LockOn_Options.script_path.."../Resources/AMU/Herc_AMU002_Range.dds", materials["white"]}
textures["AMU002_Overlays"]		= {LockOn_Options.script_path.."../Resources/AMU/Herc_AMU002_Overlays.dds", materials["white"]}
textures["AMU002_HDD_Pos"]		= {LockOn_Options.script_path.."../Resources/AMU/Herc_AMU002_HDD_Pos.dds", materials["white"]}
textures["AMU002_HDD_Pos_Checklists"]		= {LockOn_Options.script_path.."../Resources/AMU/Herc_AMU002_HDD_Pos_Checklists.dds", materials["white"]}
textures["AMU002_CDI"]		= {LockOn_Options.script_path.."../Resources/AMU/Herc_AMU002_CDI.dds", materials["white"]}
textures["AMU002_Waypoints_Select"]		= {LockOn_Options.script_path.."../Resources/AMU/Herc_AMU002_Waypoints_Select.dds", materials["white"]}
textures["AMU001_Waypoint"]		= {LockOn_Options.script_path.."../Resources/AMU/Herc_AMU001_Waypoint.dds", materials["white"]}
-------CNBP-------
textures["CNBP_CB_page"]		= {LockOn_Options.script_path.."../Resources/CNBP/Herc_CNBP_CB_page.dds", materials["white"]}
textures["CNBP_Comm_page"]		= {LockOn_Options.script_path.."../Resources/CNBP/Herc_CNBP_Comm_page.dds", materials["white"]}
textures["CNBP_NAV_page"]		= {LockOn_Options.script_path.."../Resources/CNBP/Herc_CNBP_NAV_page.dds", materials["white"]}
-------LOADMASTER_STATION-------
textures["LMPanel_Lock_Control_Page"]		= {LockOn_Options.script_path.."../Resources/LMPanel/Herc_Lock_Control_Page.dds", materials["white"]}
textures["LMPanel_Compartment_Limitations_Page"]		= {LockOn_Options.script_path.."../Resources/LMPanel/Herc_Compartment_Limitations_Page.dds", materials["white"]}
textures["LMPanel_Characteristics_Page"]		= {LockOn_Options.script_path.."../Resources/LMPanel/Herc_Characteristics_Page.dds", materials["white"]}
textures["LMPanel_Planning_Data_Page"]		= {LockOn_Options.script_path.."../Resources/LMPanel/Herc_Planning_Data_Page.dds", materials["white"]}
textures["LMPanel_CofG_Page"]		= {LockOn_Options.script_path.."../Resources/LMPanel/Herc_CofG_Page.dds", materials["white"]}
textures["LMPanel_YellowCross"]		= {LockOn_Options.script_path.."../Resources/LMPanel/Herc_YellowCross.dds", materials["white"]}
textures["LMPanel_RedCross"]		= {LockOn_Options.script_path.."../Resources/LMPanel/Herc_RedCross.dds", materials["white"]}




preload_texture = 
{
-------HUD-------
	LockOn_Options.script_path.."../Resources/HUD/Herc_AirspeedAltitude_caret.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_V1.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_Vr.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_Vap.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_Vs.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_AirspeedAltitude_back.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_AirspeedAltitude_pointer.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_WindIndicator.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_HeadingBracket.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_HudWaterline.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_HudHorizonLine.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_HudLadderPositive.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_HudLadderNegative.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_CDM.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_CDM_X.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_GhostFPM.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_GhostFPM_X.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_EnergyCue.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_SideForceIndicator.dds",
	LockOn_Options.script_path.."../Resources/HUD/Herc_SideSlipIndicator.dds",
-------HDD-------
	LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Needle.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Needle_Quarter_Green_Band.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Needle_Half_Green_Band.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Needle_ThreeQ_Green_Band.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Needle_ThreeQ_Green_Band_Stop.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Needle_Quarter_White_Band.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Needle_Quarter_Amber_Band.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Mask.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Background.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_HP_Ref_Set_Mark.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_MGT_Background.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_NG_Background.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_Flight_Data.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_Checklist_After_Landing.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_Checklist_After_Takeoff.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_Checklist_Before_Landing.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_Checklist_Before_Takeoff.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_Checklist_Engine_Start.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_Checklist_Power_Up.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_Checklist_Shutdown.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_DigMap_indication.tga",
	LockOn_Options.script_path.."../Resources/HDD/Herc_PFD_Background.dds",
	LockOn_Options.script_path.."../Resources/HDD/Herc_System_Status.dds",
-------AMU-------
	LockOn_Options.script_path.."../Resources/AMU/Herc_AMU001_Main_Menu.dds",
	LockOn_Options.script_path.."../Resources/AMU/Herc_AMU001_Digital_Map.dds",
	LockOn_Options.script_path.."../Resources/AMU/Herc_AMU001_Nav_Select.dds",
	LockOn_Options.script_path.."../Resources/AMU/Herc_AMU001_Checklists.dds",
	LockOn_Options.script_path.."../Resources/AMU/Herc_AMU001_CAPS.dds",
	LockOn_Options.script_path.."../Resources/AMU/Herc_AMU001_CAPS_Battle_Circle.dds",
	LockOn_Options.script_path.."../Resources/AMU/Herc_AMU002_Main_Menu.dds",
	LockOn_Options.script_path.."../Resources/AMU/Herc_AMU002_Range.dds",
	LockOn_Options.script_path.."../Resources/AMU/Herc_AMU002_Overlays.dds",
	LockOn_Options.script_path.."../Resources/AMU/Herc_AMU002_HDD_Pos.dds",
	LockOn_Options.script_path.."../Resources/AMU/Herc_AMU002_HDD_Pos_Checklists.dds",
	LockOn_Options.script_path.."../Resources/AMU/Herc_AMU002_CDI.dds",
	LockOn_Options.script_path.."../Resources/AMU/Herc_AMU002_Waypoint_Select.dds",
	LockOn_Options.script_path.."../Resources/AMU/Herc_AMU001_Waypoint1.dds",
-------CNBP-------
	LockOn_Options.script_path.."../Resources/CNBP/Herc_CNBP_CB_page.dds",
	LockOn_Options.script_path.."../Resources/CNBP/Herc_CNBP_Comm_page.dds",
	LockOn_Options.script_path.."../Resources/CNBP/Herc_CNBP_NAV_page.dds",
-------LOADMASTER_STATION-------
	LockOn_Options.script_path.."../Resources/LMPanel/Herc_Lock_Control_Page.dds",
	LockOn_Options.script_path.."../Resources/LMPanel/Herc_Compartment_Limitations_Page.dds",
	LockOn_Options.script_path.."../Resources/LMPanel/Herc_Characteristics_Page.dds",
	LockOn_Options.script_path.."../Resources/LMPanel/Herc_Planning_Data_Page.dds",
	LockOn_Options.script_path.."../Resources/LMPanel/Herc_CofG_Page.dds",
	LockOn_Options.script_path.."../Resources/LMPanel/Herc_YellowCross.dds",
	LockOn_Options.script_path.."../Resources/LMPanel/Herc_RedCross.dds",
-------MPCD-------
	LockOn_Options.script_path.."../Resources/MPCD/Herc_MPCD_Align.tga.dds",
	LockOn_Options.script_path.."../Resources/MPCD/Herc_MPCD_Symbols_01.dds",
	LockOn_Options.script_path.."../Resources/MPCD/Herc_MPCD_Symbols_02.tga",
	LockOn_Options.script_path.."../Resources/MPCD/Herc_MPCD_Symbols_03.tga",
	LockOn_Options.script_path.."../Resources/MPCD/Herc_MPCD_Symbols_04.tga",
	LockOn_Options.script_path.."../Resources/MPCD/Herc_MPCD_Symbols_05.tga",
	LockOn_Options.script_path.."../Resources/MPCD/Herc_HUD_Symbols.tga",
}


