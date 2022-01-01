#tp to the deepest unsolid block
execute unless block ~ ~-1 ~ minecraft:snow[layers=8] if block ~ ~-1 ~ #snow:unsolid_snow run tp ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ minecraft:snow[layers=8] if block ~ ~-1 ~ #snow:unsolid_snow run function snow:gravity