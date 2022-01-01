scoreboard players set temp1 snow 0
execute unless block ~ ~ ~ #snow:unsolid_snow run scoreboard players set temp1 snow 16
execute if block ~ ~ ~ #snow:unsolid run scoreboard players set temp1 snow 0
execute if block ~ ~ ~ snow[layers=1] run scoreboard players set temp1 snow 2
execute if block ~ ~ ~ snow[layers=2] run scoreboard players set temp1 snow 4
execute if block ~ ~ ~ snow[layers=3] run scoreboard players set temp1 snow 6
execute if block ~ ~ ~ snow[layers=4] run scoreboard players set temp1 snow 8
execute if block ~ ~ ~ snow[layers=5] run scoreboard players set temp1 snow 10
execute if block ~ ~ ~ snow[layers=6] run scoreboard players set temp1 snow 12
execute if block ~ ~ ~ snow[layers=7] run scoreboard players set temp1 snow 14
execute if block ~ ~ ~ snow[layers=8] run scoreboard players set temp1 snow 16

scoreboard players operation @s snow = temp1 snow
