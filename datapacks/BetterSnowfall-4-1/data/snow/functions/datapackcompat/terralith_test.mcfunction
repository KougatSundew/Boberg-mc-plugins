
scoreboard objectives add temp_snow dummy
scoreboard players set temp temp_snow 1
scoreboard players set snow_temp tr.first 1
execute if score snow_temp tr.first matches 1 run scoreboard players set temp temp_snow 0
execute if score temp temp_snow matches 0 run function snow:datapackcompat/terralith_compat
execute if score temp temp_snow matches 1 run function snow:datapackcompat/terralith_no

scoreboard players reset snow_temp tr.first
scoreboard objectives remove temp_snow
