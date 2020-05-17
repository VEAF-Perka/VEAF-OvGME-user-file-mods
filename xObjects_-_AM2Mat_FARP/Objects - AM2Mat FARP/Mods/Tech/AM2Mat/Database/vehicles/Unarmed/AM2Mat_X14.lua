--HARRIER Mod lua files by SUNTSAG (Callsign NAKED) BFVG
-- AM2 X 14 --

mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures/AM2MATTEXTURE.zip")

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 40

GT.visual.shape = "AM2_MAT_X14.EDM"
GT.visual.shape_dstr = "AM2_MAT_X14_DEST.EDM"
GT.CustomAimPoint = {1,1,0}
GT.visual.fire_size = 3
GT.visual.fire_pos = {-1,0,0};
GT.visual.fire_time = 25
GT.time_agony = 10;
GT.animation_arguments.headlights = 1;

GT.Name = "AM2_MAT_X14"
GT.DisplayName = _("*AM2_MAT_X14")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Fortifications",
                };
GT.category = "Unarmed";
                
add_surface_unit(GT)
