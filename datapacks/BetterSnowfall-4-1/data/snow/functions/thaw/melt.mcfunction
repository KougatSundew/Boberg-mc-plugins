
execute if block ~ ~-1 ~ minecraft:snow[layers=8] if block ~ ~ ~ #snow:unsolid run tag @s add melt_finished
execute if block ~ ~-1 ~ minecraft:snow[layers=8] if block ~ ~ ~ #snow:unsolid run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:snow[layers=7] replace minecraft:snow[layers=8]
execute if block ~ ~-1 ~ minecraft:snow[layers=8] if block ~ ~ ~ minecraft:snow[layers=1] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:snow[layers=7]
execute if block ~ ~ ~ minecraft:snow[layers=2] run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=1] replace minecraft:snow[layers=2]
execute if block ~ ~ ~ minecraft:snow[layers=3] run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=2] replace minecraft:snow[layers=3]
execute if block ~ ~ ~ minecraft:snow[layers=4] run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=3] replace minecraft:snow[layers=4]
execute if block ~ ~ ~ minecraft:snow[layers=5] run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=4] replace minecraft:snow[layers=5]
execute if block ~ ~ ~ minecraft:snow[layers=6] run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=5] replace minecraft:snow[layers=6]
execute unless entity @s[tag=melt_finished] if block ~ ~ ~ minecraft:snow[layers=7] run fill ~ ~ ~ ~ ~ ~ minecraft:snow[layers=6] replace minecraft:snow[layers=7]
