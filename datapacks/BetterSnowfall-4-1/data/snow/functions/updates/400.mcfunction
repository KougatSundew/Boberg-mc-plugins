
scoreboard players set snowthaw_speed snow 5
scoreboard players set snowthaw snow 0
execute if score snowfall_speed snow matches 10 run scoreboard players set snowfall_speed snow 30

scoreboard players set frostlist snow 0
scoreboard players set frost_limit snow 0
scoreboard objectives add snow_frost dummy
scoreboard players set melt_side_spread snow 0

scoreboard players reset snowonsnowhill snow

scoreboard players set version snow 400
