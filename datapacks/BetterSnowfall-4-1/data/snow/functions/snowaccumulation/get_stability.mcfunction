#reset scores
scoreboard players set temp1 snow 0
scoreboard players set temp3 snow 0
scoreboard players set temp4 snow 0
scoreboard players set temp5 snow 0
scoreboard players set temp2 snow -126

#get translated stable block heights and calculate them with the main score temp2
execute at @s positioned ~1 ~-1 ~ run function snow:snowaccumulation/get_solid_block_height5
scoreboard players operation temp2 snow += temp1 snow
execute at @s positioned ~-1 ~-1 ~ run function snow:snowaccumulation/get_solid_block_height5
scoreboard players operation temp2 snow += temp1 snow
execute at @s positioned ~ ~-1 ~1 run function snow:snowaccumulation/get_solid_block_height5
scoreboard players operation temp2 snow += temp1 snow
execute at @s positioned ~ ~-1 ~-1 run function snow:snowaccumulation/get_solid_block_height5
scoreboard players operation temp2 snow += temp1 snow
execute at @s positioned ~1 ~ ~ run function snow:snowaccumulation/get_solid_block_height3
scoreboard players operation temp2 snow += temp1 snow
execute at @s positioned ~-1 ~ ~ run function snow:snowaccumulation/get_solid_block_height3
scoreboard players operation temp2 snow += temp1 snow
execute at @s positioned ~ ~ ~1 run function snow:snowaccumulation/get_solid_block_height3
scoreboard players operation temp2 snow += temp1 snow
execute at @s positioned ~ ~ ~-1 run function snow:snowaccumulation/get_solid_block_height3
scoreboard players operation temp2 snow += temp1 snow

execute at @s positioned ~1 ~-1 ~1 run function snow:snowaccumulation/get_solid_block_height1
scoreboard players operation temp2 snow += temp1 snow
execute at @s positioned ~1 ~-1 ~-1 run function snow:snowaccumulation/get_solid_block_height1
scoreboard players operation temp2 snow += temp1 snow
execute at @s positioned ~-1 ~-1 ~1 run function snow:snowaccumulation/get_solid_block_height1
scoreboard players operation temp2 snow += temp1 snow
execute at @s positioned ~-1 ~-1 ~-1 run function snow:snowaccumulation/get_solid_block_height1
scoreboard players operation temp2 snow += temp1 snow
execute at @s positioned ~1 ~ ~1 run function snow:snowaccumulation/get_solid_block_height1
scoreboard players operation temp2 snow += temp1 snow
execute at @s positioned ~1 ~ ~-1 run function snow:snowaccumulation/get_solid_block_height1
scoreboard players operation temp2 snow += temp1 snow
execute at @s positioned ~-1 ~ ~1 run function snow:snowaccumulation/get_solid_block_height1
scoreboard players operation temp2 snow += temp1 snow
execute at @s positioned ~-1 ~ ~-1 run function snow:snowaccumulation/get_solid_block_height1
scoreboard players operation temp2 snow += temp1 snow

execute at @s positioned ~ ~-1 ~ run function snow:snowaccumulation/get_solid_block_height4
scoreboard players operation temp2 snow += temp1 snow

execute at @s positioned ~ ~ ~ run function snow:snowaccumulation/get_solid_block_height2
scoreboard players operation temp1 snow *= 8 snow
scoreboard players operation temp2 snow -= temp1 snow
scoreboard players operation temp5 snow = temp1 snow

scoreboard players operation @s stability = temp2 snow
