--db.Units.Cars = {};
local plugin_db_path = current_mod_path..'/Database/'

--------------------------------------------------------------------------
-- Cars
--------------------------------------------------------------------------

local function chassis_file(f)
    if dofile(plugin_db_path..f) then
		error("can't load file "..f)
		return
	end
end

local function vehicle_file(f)
	if dofile(plugin_db_path..f) then
		error("can't load file "..f)
		return
	end
	if(GT) then
		GT.shape_table_data = 
		{
			{
				file  	    = GT.visual.shape;
				username    = GT.Name;
				desrt       = GT.visual.shape_dstr;
			    classname 	= "lLandVehicle";
				positioning = "BYNORMAL";
				life		= GT.life or 5;
			},
			{
				name  = GT.visual.shape_dstr;
				file  = GT.visual.shape_dstr;
			},
		}
		add_surface_unit(GT)
		GT = nil;
	else
		error("GT empty in file "..f)
	end;
end

--- BEGIN Vehicles
GT = nil;

-- UK

vehicle_file("vehicles/Unarmed/Field_Hide Large.lua")
vehicle_file("vehicles/Unarmed/Field_Hide_Small.lua")
vehicle_file("vehicles/Unarmed/MarstonMat.lua")
vehicle_file("vehicles/Unarmed/MarstonMat_X4.lua")
vehicle_file("vehicles/Unarmed/MarstonMat_X14.lua")
vehicle_file("vehicles/Unarmed/MarstonMat_X28.lua")
vehicle_file("vehicles/Unarmed/Tower.lua")
vehicle_file("vehicles/Unarmed/Dispersal.lua")
vehicle_file("vehicles/Unarmed/sandbagcurved.lua")

