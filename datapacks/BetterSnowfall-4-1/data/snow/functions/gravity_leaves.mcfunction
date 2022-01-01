#snow falls through leaves, up to 3 blocks thick leaves layers 
execute as @s at @s if block ~ ~ ~ #snow:unsolid_snow if block ~ ~-1 ~ #minecraft:leaves run tp @s ~ ~-1 ~
execute as @s at @s if block ~ ~ ~ #minecraft:leaves if block ~ ~-1 ~ #minecraft:leaves if predicate snow:leaves2 run tp @s ~ ~-1 ~
execute as @s at @s if block ~ ~ ~ #minecraft:leaves if block ~ ~-1 ~ #minecraft:leaves if predicate snow:leaves2 run tp @s ~ ~-1 ~
execute as @s at @s if block ~ ~ ~ #minecraft:leaves if block ~ ~-1 ~ #snow:unsolid_snow run function snow:gravity

execute unless block ~ ~ ~ #snow:unsolid_snow run kill @s
execute if block ~ ~ ~ #snow:unsolid_snow as @s at @s if block ~ ~-1 ~ #minecraft:leaves if predicate snow:leaves1 run function snow:gravity_leaves