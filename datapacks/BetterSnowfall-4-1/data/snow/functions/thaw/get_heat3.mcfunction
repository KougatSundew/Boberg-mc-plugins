scoreboard players set temp1 snow 0
execute unless block ~ ~ ~ #snow:unsolid_snow run scoreboard players set temp1 snow 24
execute if block ~ ~ ~ #snow:unsolid run scoreboard players set temp1 snow -40
execute if block ~ ~ ~ minecraft:air run scoreboard players set temp1 snow 0
execute if block ~ ~ ~ minecraft:cave_air run scoreboard players set temp1 snow 0
execute if block ~ ~ ~ snow[layers=1] run scoreboard players set temp1 snow 1
execute if block ~ ~ ~ snow[layers=2] run scoreboard players set temp1 snow 3
execute if block ~ ~ ~ snow[layers=3] run scoreboard players set temp1 snow 5
execute if block ~ ~ ~ snow[layers=4] run scoreboard players set temp1 snow 7
execute if block ~ ~ ~ snow[layers=5] run scoreboard players set temp1 snow 9
execute if block ~ ~ ~ snow[layers=6] run scoreboard players set temp1 snow 11
execute if block ~ ~ ~ snow[layers=7] run scoreboard players set temp1 snow 13
execute if block ~ ~ ~ snow[layers=8] run scoreboard players set temp1 snow 16
execute if block ~ ~ ~ #snow:half_unsolid run scoreboard players set temp1 snow -8
execute if block ~ ~ ~ minecraft:powder_snow run scoreboard players set temp1 snow -8
execute if block ~ ~ ~ #minecraft:leaves run scoreboard players set temp1 snow 16