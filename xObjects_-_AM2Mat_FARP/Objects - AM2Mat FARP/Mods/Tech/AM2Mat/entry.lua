local self_ID = "AM2"

declare_plugin(self_ID,
{
installed 	 = true, 
		-- dirName	  	 = current_mod_path,
		-- fileMenuName = _("AM2"),
		-- shortName	 = "AM2",
		-- version		 = "AM2",		 
state		 = "installed",
developerName	  = "SUNTSAG",
version		 	  = __DCS_VERSION__,		 
})
		-- info		 = _("AM2"),

		
		-- Skins = {
            -- {
                -- name = _("AM2"),
                -- dir = "Skins/1"
            -- },
        -- },
		
		-- encyclopedia_path = current_mod_path .. '/Encyclopedia',
-- })
----------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries/")
mount_vfs_texture_path (current_mod_path.."/Textures/")



dofile(current_mod_path.."/Database/db_FARPAM_objects.lua")
dofile(current_mod_path.."/Database/db_units_carsAM.lua")

plugin_done()

