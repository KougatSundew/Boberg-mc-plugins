scoreboard players set temp1 snow 0
execute if block ~ ~ ~ minecraft:ice run scoreboard players set temp1 snow -132
execute if block ~ ~ ~ minecraft:packed_ice run scoreboard players set temp1 snow -176
execute if block ~ ~ ~ minecraft:dirt_path run scoreboard players set temp1 snow -176
execute if block ~ ~ ~ minecraft:farmland run scoreboard players set temp1 snow -176
execute if block ~ ~ ~ #minecraft:slabs run scoreboard players set temp1 snow -176
execute if block ~ ~ ~ #minecraft:stairs run scoreboard players set temp1 snow -128
execute if block ~ ~ ~ #snow:half_unsolid run scoreboard players set temp1 snow -176
execute if block ~ ~ ~ minecraft:powder_snow run scoreboard players set temp1 snow -48
execute if block ~ ~ ~ #minecraft:leaves if block ~ ~1 ~ air run scoreboard players set temp1 snow 128
execute if block ~ ~ ~ #minecraft:leaves if block ~ ~1 ~ snow[layers=1] run scoreboard players set temp1 snow 16
execute if block ~ ~ ~ #minecraft:leaves if block ~ ~1 ~ snow[layers=2] run scoreboard players set temp1 snow 8
