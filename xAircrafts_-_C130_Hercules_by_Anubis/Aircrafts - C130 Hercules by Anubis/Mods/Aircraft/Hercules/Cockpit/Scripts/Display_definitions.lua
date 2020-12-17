--Display_definitions
dofile(LockOn_Options.common_script_path.."elements_defs.lua")

SetScale(FOV)

width  	   = 1.0;
height 	   = width * GetAspect()

DISPLAY_DEFAULT_LEVEL = 4

--BrigtnessController
BCont	=
{
	[1] = {"change_color_when_parameter_equal_to_number", 0, 1.0, 1.0, 1.0, 1.0},
	[2] = {"change_color_when_parameter_equal_to_number", 0, 0.9, 0.9, 0.9, 0.9},
	[3] = {"change_color_when_parameter_equal_to_number", 0, 0.8, 0.8, 0.8, 0.8},
	[4] = {"change_color_when_parameter_equal_to_number", 0, 0.7, 0.7, 0.7, 0.7},
	[5] = {"change_color_when_parameter_equal_to_number", 0, 0.6, 0.6, 0.6, 0.6},
	[6] = {"change_color_when_parameter_equal_to_number", 0, 0.5, 0.5, 0.5, 0.5},
	[7] = {"change_color_when_parameter_equal_to_number", 0, 0.4, 0.4, 0.4, 0.4},
	[8] = {"change_color_when_parameter_equal_to_number", 0, 0.3, 0.3, 0.3, 0.3},
	[9] = {"change_color_when_parameter_equal_to_number", 0, 0.2, 0.2, 0.2, 0.2},
	[10] = {"change_color_when_parameter_equal_to_number", 0, 0.1, 0.1, 0.1, 0.1},
}
						
function AddElement(object)
    object.use_mipfilter    = true
	object.additive_alpha   = true
	object.h_clip_relation  = h_clip_relations.COMPARE
	object.level			= DISPLAY_DEFAULT_LEVEL
    Add(object)
end

function Add_Object_Text(object, objectname, objectparent, LEVEL, objectmaterial, objectalignment, format_value, stringdefs_value, initpixelposx, initpixelposy, objectelementparams, objectcontrollers)
	local object           = CreateElement "ceStringPoly"
	object.name            = objectname
	object.material        = objectmaterial
	object.element_params = objectelementparams
	object.controllers = objectcontrollers
	object.init_pos = {(0.003333 * initpixelposx) - 1, ((-0.005 * initpixelposy) + 1) * GetAspect()}
	object.alignment		= objectalignment
	if format_value ~= nil then
		if type(format_value) == "table" then
			object.formats = format_value
		else
			object.value = format_value
		end
	end
	object.stringdefs		= stringdefs_value--VerticalSize, HorizontalSize, HorizontalSpacing, VerticalSpacing
    object.use_mipfilter    = true
	object.additive_alpha   = true
	object.collimated		= false
	object.h_clip_relation  = h_clip_relations.COMPARE
	object.level			= DISPLAY_DEFAULT_LEVEL + LEVEL
	object.parent_element = objectparent
    Add(object)
end

