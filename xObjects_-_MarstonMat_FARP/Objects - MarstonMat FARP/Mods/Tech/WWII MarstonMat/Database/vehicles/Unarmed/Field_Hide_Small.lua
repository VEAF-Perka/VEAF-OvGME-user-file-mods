--BFVG HARRIER PACK LUA by SUNTSAG (Callsign: Naked)
-- HARRIER VEHICLE HIDE --

mount_vfs_model_path	(current_mod_path.."/Shapes/")
mount_vfs_texture_path  (current_mod_path.."/Textures/MARSTON.zip")

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 20

GT.visual.shape = "MARSTON_HIDE.EDM"
GT.visual.shape_dstr = "HARRIER_HIDE_DEST.EDM"
GT.CustomAimPoint = {1,1,0}

--Burning after hit
GT.visual.fire_size = 0.8 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 800 --burning time (seconds)

GT.Name = "HARRIERH"
GT.DisplayName = _("*FIELD HIDE SMALL")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
                "Fortifications",
                };
GT.category = "Unarmed";
                
add_surface_unit(GT)