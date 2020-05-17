--HARRIER Mod lua files by SUNTSAG (Callsign NAKED) BFVG
-- AM2 X4 --

mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures/MARSTON.zip")

-- GT_t.CH_t.STATIC = {
    -- life = 0.08,
    -- mass = 90,
    -- length = 1,
    -- width = 1,
    -- max_road_velocity = 4,
    -- max_slope = 0.87,
	-- canSwim = true,
	-- canWade = true,
	-- waterline_level = -11.812,
    -- engine_power = 0.5,
	-- fordingDepth = 1.0,
    -- max_vert_obstacle = 1,
    -- max_acceleration = 3.0,
    -- min_turn_radius = 0.1,
    -- X_gear_1 = 0.3,
    -- Y_gear_1 = 0,
    -- Z_gear_1 = 0.0,
    -- X_gear_2 = 0.0,
    -- Y_gear_2 = 0,
    -- Z_gear_2 = 0.0,
	-- gear_type = GT_t.GEAR_TYPES.HUMAN,
    -- r_max = 0.53,
    -- armour_thickness = 0,
	-- human_figure = true,
-- }



GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 40

GT.visual.shape = "MARSTON_MAT_X4.EDM"
GT.visual.shape_dstr = "MARSTON_MAT_X4_DEST.EDM"
GT.CustomAimPoint = {1,1,0}
GT.visual.fire_size = 3
GT.visual.fire_pos = {-1,0,0};
GT.visual.fire_time = 25
GT.time_agony = 10;
GT.animation_arguments.headlights = 1;

GT.Name = "MARSTON_MAT_X4"
GT.DisplayName = _("*MARSTON_MAT_X4")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Fortifications",
                };
GT.category = "Unarmed";
                
add_surface_unit(GT)
