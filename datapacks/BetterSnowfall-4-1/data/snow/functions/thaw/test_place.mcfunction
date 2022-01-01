
#get frost of the place
function snow:thaw/get_frost

#get the max. limit for frost
function snow:thaw/choose_frost_limit

#if frost <= limit melts snow
execute if score @s snow_frost <= frost_limit snow run function snow:thaw/melt

#sideward search
execute if score @s snow_frost > frost_limit snow run function snow:thaw/side_spread1
