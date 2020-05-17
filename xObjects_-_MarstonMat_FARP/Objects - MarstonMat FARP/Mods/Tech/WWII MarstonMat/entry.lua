local self_ID = "Marston Mat Mod"

declare_plugin(self_ID,
{
installed 	 = true, 
		-- dirName	  	 = current_mod_path,
		-- fileMenuName = _("BFVG HP"),
		-- shortName	 = "BFVG Marston",
		-- version		 = "FIELD OPS",		 
state		 = "installed",
developerName	  = "suntsag",
version		 	  = __DCS_VERSION__,		 
})
		-- info		 = _("Marston Pack"),

		
		-- Skins = {
            -- {
                -- name = _("BFVG Marston"),
                -- dir = "Skins/1"
            -- },
        -- },
		
		-- encyclopedia_path = current_mod_path .. '/Encyclopedia',
-- })
----------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries/")
mount_vfs_texture_path (current_mod_path.."/Textures/")



dofile(current_mod_path.."/Database/db_FARP_objects.lua")
dofile(current_mod_path.."/Database/db_units_cars2.lua")

plugin_done()

