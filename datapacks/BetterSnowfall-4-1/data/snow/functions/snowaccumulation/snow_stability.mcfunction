
#get stability of the place
function snow:snowaccumulation/get_stability

#get the min. limit for stability
function snow:snowaccumulation/choose_stability_limit


#if stability >= limit places snow
execute if score @s stability >= stability_limit snow run function snow:snowaccumulation/snow_place

#if stability < limit try to spread to a nearby block
execute if score @s stability < stability_limit snow run function snow:snowaccumulation/side_spread1
