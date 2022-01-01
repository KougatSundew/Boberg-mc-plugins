#conditoned gravity loop 
scoreboard players add finite_gravity snow 1
execute unless block ~ ~-1 ~ minecraft:snow[layers=8] if block ~ ~-1 ~ #snow:unsolid_snow run tp ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ minecraft:snow[layers=8] if block ~ ~-1 ~ #snow:unsolid_snow unless score finite_gravity snow matches 3.. run function snow:finite_gravity2