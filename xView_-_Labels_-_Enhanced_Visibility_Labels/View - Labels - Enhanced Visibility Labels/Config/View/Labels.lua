-- Label parameters
-- Copyright (C) 2018, Eagle Dynamics.



-- labels =  0  -- NONE
-- labels =  1  -- FULL
-- labels =  2  -- ABBREVIATED
-- labels =  3  -- DOT ONLY

-- Off: No labels are used
-- Full: As we have now
-- Abbreviated: Only red or blue dot and unit type name based on side
-- Dot Only: Only red or blue dot based on unit side



local IS_DOT 		 = labels and labels ==  3
local IS_ABBREVIATED = labels and labels ==  2

AirOn			 		= true
GroundOn 		 		= true
NavyOn		 	 		= true
WeaponOn 		 		= true
labels_format_version 	= 1 -- labels format vesrion
---------------------------------
-- Label text format symbols
-- %N - name of object
-- %D - distance to object
-- %P - pilot name
-- %n - new line 
-- %% - symbol '%'
-- %x, where x is not NDPn% - symbol 'x'
-- %C - extended info for vehicle's and ship's weapon systems
------------------------------------------
-- Example
-- labelFormat[5000] = {"Name: %N%nDistance: %D%n Pilot: %P","LeftBottom",0,0}
-- up to 5km label is:
--       Name: Su-33
--       Distance: 30km
--       Pilot: Pilot1


-- alignment options 
--"RightBottom"
--"LeftTop"
--"RightTop"
--"LeftCenter"
--"RightCenter"
--"CenterBottom"
--"CenterTop"
--"CenterCenter"
--"LeftBottom"


-- labels font properties {font_file_name, font_size_in_pixels, text_shadow_offset_x, text_shadow_offset_y, text_blur_type}
-- text_blur_type = 0 - none
-- text_blur_type = 1 - 3x3 pixels
-- text_blur_type = 2 - 5x5 pixels
font_properties =  {"DejaVuLGCSans.ttf", 5, 0, 0, 2}

local aircraft_symbol_near  =  "•" --U+02C4
local aircraft_symbol_far   =  "•" --U+02C4

local ground_symbol_near    = "•"  --U+02C9
local ground_symbol_far     = "•"  --U+02C9

local navy_symbol_near      = "•"  --U+02DC
local navy_symbol_far       = "•"  --U+02DC

local weapon_symbol_near    = "•"  --U+02C8
local weapon_symbol_far     = "•"  --U+02C8

local function dot_symbol(blending,opacity)
    return {"•","CenterCenter", blending or 1.0 , opacity  or 0.1}
end

local NAME 				   = "%N"
local NAME_DISTANCE_PLAYER = "%N%n %D%n %P"
local NAME_DISTANCE        = "%N%n %D"
local DISTANCE             =   "%n %D"

-- Text shadow color in {red, green, blue, alpha} format, volume from 0 up to 255
-- alpha will by multiplied by opacity value for corresponding distance
local text_shadow_color = {128, 128, 128, 0}
local text_blur_color 	= {0, 0, 255, 0}

local EMPTY = {"", "LeftBottom", 1, 1, 0, 0}


if 		IS_DOT then

AirFormat = {
--[distance]		= {format, alignment, color_blending_k, opacity, shift_in_pixels_x, shift_in_pixels_y}
[800]	= EMPTY,
[5000]	= {aircraft_symbol_near	, "CenterCenter"	,0.4	, 0.4	, 0	, 0},
[8000]	= {aircraft_symbol_near	, "CenterCenter"	,0.1	, 0.05	, 0	, 0},
[12000]	= {aircraft_symbol_near	, "CenterCenter"	,0.05	, 0.01	, 0	, 0},
[20000]	= {aircraft_symbol_near	, "CenterCenter"	,0.002	, 0.002	, 0	, 0},
}

GroundFormat = {
--[distance]		= {format , alignment, color_blending_k, opacity, shift_in_pixels_x, shift_in_pixels_y}
[10]	= EMPTY,
[5000]	= EMPTY,
[10000]	= EMPTY,
[20000]	=  EMPTY,
}

NavyFormat = {
--[distance]		= {format, alignment, color_blending_k, opacity, shift_in_pixels_x, shift_in_pixels_y}
[10]	= EMPTY,
[10000]	= EMPTY,
[20000]	= EMPTY,
[40000]	= EMPTY,
}

WeaponFormat = {
--[distance]		= {format ,alignment, color_blending_k, opacity, shift_in_pixels_x, shift_in_pixels_y}
[300]	    = EMPTY,
[3000]	= {aircraft_symbol_near	, "CenterCenter"	,0.001	, 0.001	, 0	, 0},
[10000]	= EMPTY,
[20000]	= EMPTY,
}

elseif IS_ABBREVIATED then 

AirFormat = {
--[distance]		= {format, alignment, color_blending_k, opacity, shift_in_pixels_x, shift_in_pixels_y}
[10]	= EMPTY,
[5000]	= {aircraft_symbol_near..NAME	, "LeftBottom"	,0.75	, 0.7	, -3	, 0},
[10000]	= {aircraft_symbol_near..NAME	, "LeftBottom"	,0.75	, 0.5	, -3	, 0},
[20000]	= {aircraft_symbol_far ..NAME	, "LeftBottom"	,0.25	, 0.25	, -3	, 0},
[30000]	= dot_symbol(0,0.1),
}

GroundFormat = {
--[distance]		= {format , alignment, color_blending_k, opacity, shift_in_pixels_x, shift_in_pixels_y}
[10]	= EMPTY,
[5000]	= {ground_symbol_near..NAME		,"LeftBottom"	,0.75	, 0.7	, -3	, 0},
[10000]	= {ground_symbol_far..NAME		,"LeftBottom"	,0.75	, 0.5	, -3	, 0},
[20000]	=  dot_symbol(0.75, 0.1),
}

NavyFormat = {
--[distance]		= {format, alignment, color_blending_k, opacity, shift_in_pixels_x, shift_in_pixels_y}
[10]	= EMPTY,
[10000]	= {navy_symbol_near ..NAME				,"LeftBottom"	,0.75	, 0.7	, -3	, 0},
[20000]	= {navy_symbol_far  ..NAME  				,"LeftBottom"	,0.75	, 0.5	, -3	, 0},
[40000]	= dot_symbol(0.75,0.1),
}

WeaponFormat = {
--[distance]		= {format ,alignment, color_blending_k, opacity, shift_in_pixels_x, shift_in_pixels_y}
[5]	    = EMPTY,
[5000]	= {weapon_symbol_near ..NAME			,"LeftBottom"	,0.75	, 0.7	, -3	, 0},
[10000]	= {weapon_symbol_far					,"LeftBottom"	,0.75	, 0.5	, -3	, 0},
[20000]	= {weapon_symbol_far					,"LeftBottom"	,0.25	, 0.25	, -3	, 0},
}

else 

AirFormat = {
--[distance]		= {format, alignment, color_blending_k, opacity, shift_in_pixels_x, shift_in_pixels_y}
[10]	= EMPTY,
[5000]	= {aircraft_symbol_near..NAME_DISTANCE_PLAYER	, "LeftBottom"	,0.75	, 0.7	, -3	, 0},
[10000]	= {aircraft_symbol_near..NAME_DISTANCE			, "LeftBottom"	,0.75	, 0.5	, -3	, 0},
[20000]	= {aircraft_symbol_far ..DISTANCE				, "LeftBottom"	,0.25	, 0.25	, -3	, 0},
[30000]	= dot_symbol(0,0.1),
}

GroundFormat = {
--[distance]		= {format , alignment, color_blending_k, opacity, shift_in_pixels_x, shift_in_pixels_y}
[10]	= EMPTY,
[5000]	= {ground_symbol_near..NAME_DISTANCE_PLAYER		,"LeftBottom"	,0.75	, 0.7	, -3	, 0},
[10000]	= {ground_symbol_far..NAME_DISTANCE				,"LeftBottom"	,0.75	, 0.5	, -3	, 0},
[20000]	= dot_symbol(0.75, 0.1),
}

NavyFormat = {
--[distance]		= {format, alignment, color_blending_k, opacity, shift_in_pixels_x, shift_in_pixels_y}
[10]	= EMPTY,
[10000]	= {navy_symbol_near ..NAME_DISTANCE				,"LeftBottom"	,0.75	, 0.7	, -3	, 0},
[20000]	= {navy_symbol_far  ..DISTANCE  				,"LeftBottom"	,0.75	, 0.5	, -3	, 0},
[40000]	= dot_symbol(0.75,0.1),
}

WeaponFormat = {
--[distance]		= {format ,alignment, color_blending_k, opacity, shift_in_pixels_x, shift_in_pixels_y}
[5]	    = EMPTY,
[5000]	= {weapon_symbol_near ..NAME_DISTANCE			,"LeftBottom"	,0.75	, 0.7	, -3	, 0},
[10000]	= {weapon_symbol_far  ..DISTANCE				,"LeftBottom"	,0.75	, 0.5	, -3	, 0},
[20000]	= {weapon_symbol_far							,"LeftBottom"	,0.25	, 0.25	, -3	, 0},
}

end

PointFormat = { 
[1e10]	= {"%N%n%D", "LeftBottom"},
}


-- Colors in {red, green, blue} format, volume from 0 up to 255

ColorAliesSide   = {50, 50, 50}
ColorEnemiesSide = {50, 50, 50}
ColorUnknown     = {50, 50, 50} -- will be blend at distance with coalition color



ShadowColorNeutralSide 	= {0,0,0,0}
ShadowColorAliesSide	= {0,0,0,0}
ShadowColorEnemiesSide 	= {0,0,0,0}
ShadowColorUnknown 		= {0,0,0,0}

BlurColorNeutralSide 	= {255,255,255,255}
BlurColorAliesSide		= {50,0  ,0  ,255}
BlurColorEnemiesSide	= {0  ,0,50  ,255}
BlurColorUnknown		= {50 ,50 ,50 ,255}
