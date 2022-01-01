
#summon other marker around the original place
summon marker ~1 ~ ~ {Tags:["snowfall_temp2"]}
summon marker ~-1 ~ ~ {Tags:["snowfall_temp2"]}
summon marker ~ ~ ~1 {Tags:["snowfall_temp2"]}
summon marker ~ ~ ~-1 {Tags:["snowfall_temp2"]}

#get information about the places
execute as @e[tag=snowfall_temp2] unless block ~ ~ ~ #snow:unsolid_snow run kill @s
execute as @e[tag=snowfall_temp2] at @s run function snow:snowaccumulation/get_solid_block_height2

#reposition main marker
tp @s @e[tag=snowfall_temp2,limit=1,sort=random]
#if no place is okay, stop loop
execute unless entity @e[tag=snow_marker] run scoreboard players set snow_side_spread snow -1
#snow falls up to 3 blocks deep, not deeper to not create strange formations of snow at overhanging mountain-cliffs
execute at @s run function snow:finite_gravity1
#if in air, loop ends
execute at @s if block ~ ~-1 ~ #snow:unsolid_snow unless block ~ ~-1 ~ minecraft:snow[layers=8] run scoreboard players set snow_side_spread snow -1

#remove other markers
kill @e[tag=snowfall_temp2]

#get stability, if enough place snow, if not, attempt another spread attempt
execute as @s at @s run function snow:snowaccumulation/get_stability
execute unless score snow_side_spread snow matches -1 run scoreboard players remove stability_limit snow 8
execute as @s at @s if score @s stability >= stability_limit snow unless score snow_side_spread snow matches -1 run function snow:snowaccumulation/snow_place
execute as @s at @s if score @s stability < stability_limit snow run function snow:snowaccumulation/side_spread2
