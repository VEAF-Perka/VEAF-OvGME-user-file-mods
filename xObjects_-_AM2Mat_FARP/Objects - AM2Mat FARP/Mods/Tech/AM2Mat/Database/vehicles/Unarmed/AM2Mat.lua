--BFVG AM2 PACK LUA by SUNTSAG (Callsign: Naked)
-- AM2 AM2 SINGLE --

mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures/AM2MATTEXTURE.zip")

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 40
positioning = "BYNORMAL";

GT.visual.shape = "AM2_MAT.EDM"
GT.visual.shape_dstr = "AM2_MAT_DEST.EDM"
GT.CustomAimPoint = {1,1,0}
GT.visual.fire_size = 3
GT.visual.fire_pos = {-1,0,0};
GT.visual.fire_time = 25
GT.time_agony = 10;
GT.animation_arguments.headlights = 1;
positioning = "BYNORMAL";

GT.Name = "AM2_MAT"
GT.DisplayName = _("*AM2_MAT_X1")
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

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 25

GT.visual.shape = "AM2_HARM_BOX.EDM"
GT.visual.shape_dstr = "AM2_HARM_BOX.EDM"
GT.CustomAimPoint = {1,1,0}
GT.visual.fire_size = 3
GT.visual.fire_pos = {-1,0,0};
GT.visual.fire_time = 25
GT.time_agony = 10;

GT.Name = "AM2HARM_BOX"
GT.DisplayName = _("*AM2AGM122_BOX")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
				"Fortifications",
				};
GT.category = "Unarmed";
				
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 1

GT.visual.shape = "AM2_TROLLEY.EDM"
GT.visual.shape_dstr = "AM2_TROLLEY_DEST.EDM"
GT.CustomAimPoint = {1,1,0}

--Burning after hit
GT.visual.fire_size = 0.8 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 800 --burning time (seconds)

GT.Name = "AM2LGBRrolley"
GT.DisplayName = _("*AM2GBU12 TROLLEY")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000005";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
				"Fortifications",
				};
GT.category = "Unarmed";
				
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 1

GT.visual.shape = "AM2 STEPS.EDM"
GT.visual.shape_dstr = "AM2 STEPS.EDM"
GT.CustomAimPoint = {1,1,0}
GT.visual.fire_size = 3
GT.visual.fire_pos = {-1,0,0};
GT.visual.fire_time = 25
GT.time_agony = 10;

GT.Name = "AM2AIRCRAFTSTEPS"
GT.DisplayName = _("*AM2MODERN AIRCRAFT STEPS")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
				"Fortifications",
				};
GT.category = "Unarmed";
				
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 1

GT.visual.shape = "AM2_SCAFFOLD.EDM"
GT.visual.shape_dstr = "AM2_SCAFFOLD_DEST.EDM"
GT.CustomAimPoint = {1,1,0}
GT.visual.fire_size = 3
GT.visual.fire_pos = {-1,0,0};
GT.visual.fire_time = 25
GT.time_agony = 10;

GT.Name = "AM2AIRCRAFTSCAFFOLDING"
GT.DisplayName = _("*AM2AIRCRAFT SCAFFOLDING")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
				"Fortifications",
				};
GT.category = "Unarmed";
				
add_surface_unit(GT)

GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 30

GT.visual.shape = "AM2 FUEL CAMO BARRELS.EDM"
GT.visual.shape_dstr = "AM2 FUEL CAMO BARRELS_DEST.EDM"
GT.CustomAimPoint = {1,1,0}
GT.visual.fire_size = 3
GT.visual.fire_pos = {-1,0,0};
GT.visual.fire_time = 25
GT.time_agony = 10;

GT.Name = "FUEL_BARRELS"
GT.DisplayName = _("*FUEL BARRELS")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericFort,
				"Fortifications",
				};
GT.category = "Unarmed";
				
add_surface_unit(GT)

	GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 40

GT.visual.shape = "palatkab.edm"
GT.visual.shape_dstr = "palatkab_p_1.EDM"
GT.CustomAimPoint = {1,1,0}
GT.visual.fire_size = 3
GT.visual.fire_pos = {-1,0,0};
GT.visual.fire_time = 25
GT.time_agony = 10;
GT.animation_arguments.headlights = 1;

GT.Name = "AM2DESERT_TENT"
GT.DisplayName = _("*AM2DESERT_TENT")
GT.Rate = 1

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeVAZ,
                "Fortifications",
                };
GT.category = "Unarmed";
                
add_surface_unit(GT)