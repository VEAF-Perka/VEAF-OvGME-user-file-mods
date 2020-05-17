local function add_structure(f)
	if(f) then
		f.shape_table_data = 
		{
			{
				file  	    = f.ShapeName,
				life		= f.Life,
				username    = f.Name,
				desrt       = f.ShapeNameDestr or "self",
			    classname 	= f.classname   or "lLandVehicle",
				-- positioning = f.positioning or "BY_XZ"	--available: {"BYNORMAL", "ONLYHEIGTH", "BY_XZ", "ADD_HEIGTH"}
				-- positioning = "ADD_HEIGTH"
				positioning = "BYNORMAL"
			}
		}
		if f.ShapeNameDestr then
			f.shape_table_data[#f.shape_table_data + 1] = 
			{
				name  = f.ShapeName,
				file  = f.ShapeNameDestr,	
			}
		end
		
		
		f.mapclasskey = "P0091000022";
		f.attribute = {wsType_Static, wsType_Standing} -- if 'attribute' == nil then insertion will be aborted
		
		add_surface_unit(f)
		GT = nil;
	else
		error("Can't add structure")
	end;
end

add_structure({
Name 		 =  "Marsden",
DisplayName  = _("**X1_Marsden_Mat NGR"),
ShapeName	 =   "MARSTON_MAT.EDM",
Life		 =  2500,
Rate		 =  100,
category     =  'Heliport',
SeaObject    = 	true,
isPutToWater =  true,
positioning  = 	"NO",
waterline_level = 2.4,
classname    =  "lOilPlatform",
-- classname    =  "lHeliport",
numParking   =  1,
})

add_structure({
Name 		 =  "AM2",
DisplayName  = _("**X1_AM2_Mat NGUR"),
ShapeName	 =   "AM2_MAT.EDM",
Life		 =  2500,
Rate		 =  100,
category     =  'Heliport',
SeaObject    = 	true,
isPutToWater =  true,
positioning  = 	"NO",
waterline_level = 2.4,
classname    =  "lOilPlatform",
-- classname    =  "lHeliport",
numParking   =  1,
})

add_structure({
Name 		 =  "MarsdenH",
DisplayName  = _("**X1_Marsden_Mat GUR"),
ShapeName	 =   "MARSTON_MAT.EDM",
Life		 =  2500,
Rate		 =  100,
category     =  'Heliport',
SeaObject    = 	true,
isPutToWater =  true,
positioning  = 	"YES",
classname    =  "lHeliport",
-- classname    =  "lHeliport",
numParking   =  1,
})

add_structure({
Name 		 =  "Marsden4",
DisplayName  = _("**X4_Marsden_Mat NGUR"),
ShapeName	 =   "MARSTON_MAT_X4",
Life		 =  2500,
Rate		 =  100,
category     =  'Heliport',
SeaObject    = 	true,
isPutToWater =  true,
positioning  = 	"YES",
classname    =  "lOilPlatform",
-- classname    =  "lHeliport",
numParking   =  1,
})

add_structure({
Name 		 =  "Marsden14",
DisplayName  = _("**X14_Marsden_Mat NGUR"),
ShapeName	 =   "MARSTON_MAT_X14",
Life		 =  2500,
Rate		 =  100,
category     =  'Heliport',
SeaObject    = 	true,
isPutToWater =  true,
positioning  = 	"YES",
classname    =  "lOilPlatform",
-- classname    =  "lHeliport",
numParking   =  1,
})

add_structure({
Name 		 =  "Marsden28",
DisplayName  = _("**X28_Marsden_Mat NGUR"),
-- ShapeName	 =   "cvn74",
ShapeName	 =   "MARSTON_MAT_X28",
-- ShapeName	 =   "shelter_floor.EDM",
-- ShapeName	 =	 "CastleCaen",
Life		 =  2500,
Rate		 =  100,
category     =  'Heliport',
SeaObject    = 	true,
isPutToWater =  true,
positioning  = 	"YES",
classname    =  "lOilPlatform",
-- classname    =  "lHeliport",
numParking   =  1,
})
