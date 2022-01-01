
#summon other marker around the original place
summon marker ~1 ~ ~ {Tags:["snowfall_temp2"]}
summon marker ~-1 ~ ~ {Tags:["snowfall_temp2"]}
summon marker ~ ~ ~1 {Tags:["snowfall_temp2"]}
summon marker ~ ~ ~-1 {Tags:["snowfall_temp2"]}

#get information about the places
execute as @e[tag=snowfall_temp2] unless block ~ ~ ~ #snow:unsolid_snow run kill @s

#reposition main marker
tp @s @e[tag=snowfall_temp2,limit=1,sort=random]
#if no place is okay, stop loop
execute unless entity @e[tag=thaw_marker] run scoreboard players set melt_side_spread snow -1

execute at @s run function snow:gravity

#remove other markers
kill @e[tag=snowfall_temp2]

#get frost, if less melt snow, if not, attempt another spread attempt
execute as @s at @s run function snow:thaw/get_frost
execute unless score melt_side_spread snow matches -1 run scoreboard players add frost_limit snow 8
execute as @s at @s if score @s snow_frost <= frost_limit snow unless score melt_side_spread snow matches -1 run function snow:thaw/melt
execute as @s at @s if score @s snow_frost > frost_limit snow run function snow:thaw/side_spread2
