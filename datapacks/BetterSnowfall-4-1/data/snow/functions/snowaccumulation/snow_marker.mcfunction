
#summon marker
summon marker ~ ~ ~ {Tags:["snow_marker"]}

#positionate marker
spreadplayers ~ ~ 0 108 false @e[tag=snow_marker]
execute as @e[tag=snow_marker] at @s run function snow:gravity
execute as @e[tag=snow_marker] at @s if block ~ ~-1 ~ #leaves if predicate snow:leaves1 run function snow:gravity_leaves

#snowbiome
scoreboard players set snow_biome snow 0
execute as @e[tag=snow_marker] at @s if score biome_limit snow matches 1 if score classic snow matches 1 if predicate snow:snowfall run scoreboard players set snow_biome snow 1
execute as @e[tag=snow_marker] at @s if score biome_limit snow matches 1 if score terralith_installed snow matches 1 if predicate snow:terralith run scoreboard players set snow_biome snow 1
execute as @e[tag=snow_marker] at @s if score biome_limit snow matches 0 run scoreboard players set snow_biome snow 1
execute as @e[tag=snow_marker] at @s if score snow_biome snow matches 0 run kill @s

execute as @e[tag=snow_marker] at @s run function snow:snowaccumulation/snow_stability

#remove marker at the end of the function-chain
kill @e[tag=snow_marker]