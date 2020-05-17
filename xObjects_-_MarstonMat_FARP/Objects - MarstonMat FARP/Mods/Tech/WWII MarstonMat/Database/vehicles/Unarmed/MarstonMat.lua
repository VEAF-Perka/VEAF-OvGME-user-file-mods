--BFVG HARRIER PACK LUA by SUNTSAG (Callsign: Naked)
-- HARRIER AM2 SINGLE --

mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures/MARSTON.zip")

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 40
positioning = "BYNORMAL";

GT.visual.shape = "MARSTON_MAT.EDM"
GT.visual.shape_dstr = "MARSTON_MAT_DEST.EDM"
GT.CustomAimPoint = {1,1,0}
GT.visual.fire_size = 3
GT.visual.fire_pos = {-1,0,0};
GT.visual.fire_time = 25
GT.time_agony = 10;
GT.animation_arguments.headlights = 1;
positioning = "BYNORMAL";

GT.Name = "MARSTON_MAT"
GT.DisplayName = _("*MARSTON_MAT_X1")
GT.Rate = 1
positioning = "BYNORMAL";

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeVAZ,
                "Fortifications",
                };
GT.category = "Unarmed";
positioning = "BYNORMAL";
                
add_surface_unit(GT)
