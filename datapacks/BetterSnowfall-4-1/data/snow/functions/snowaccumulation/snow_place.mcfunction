#to handle a bug air becomes 1 layer and 1 layer directly becomes 2 layers
execute if block ~ ~-1 ~ minecraft:snow[layers=8] if block ~ ~ ~ minecraft:air run tag @s add snow_finished
execute if block ~ ~-1 ~ minecraft:snow[layers=8] if block ~ ~ ~ minecraft:cave_air run tag @s add snow_finished
execute unless block ~ ~-1 ~ #snow:unsolid_snow if block ~ ~ ~ minecraft:air run tag @s add snow_finished
execute unless block ~ ~-1 ~ #snow:unsolid_snow if block ~ ~ ~ minecraft:cave_air run tag @s add snow_finished

#snowlayers become placed
execute if block ~ ~-1 ~ minecraft:snow[layers=8] run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=1] replace minecraft:air
execute if block ~ ~-1 ~ minecraft:snow[layers=8] run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=1] replace minecraft:cave_air
execute unless block ~ ~-1 ~ #snow:unsolid_snow run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=1] replace minecraft:air
execute unless block ~ ~-1 ~ #snow:unsolid_snow run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=1] replace minecraft:cave_air
#snowlayers get 1 more heigth
execute if block ~ ~ ~ minecraft:snow[layers=7] run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=8] replace minecraft:snow[layers=7]
execute if block ~ ~ ~ minecraft:snow[layers=6] run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=7] replace minecraft:snow[layers=6]
execute if block ~ ~ ~ minecraft:snow[layers=5] run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=6] replace minecraft:snow[layers=5]
execute if block ~ ~ ~ minecraft:snow[layers=4] run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=5] replace minecraft:snow[layers=4]
execute if block ~ ~ ~ minecraft:snow[layers=3] run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=4] replace minecraft:snow[layers=3]
execute if block ~ ~ ~ minecraft:snow[layers=2] run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=3] replace minecraft:snow[layers=2]
execute unless entity @s[tag=snow_finished] if block ~ ~ ~ minecraft:snow[layers=1] run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=2] replace minecraft:snow[layers=1]
