
execute if score frost_list snow matches 0 run scoreboard players set frost_limit snow 24
execute if score frost_list snow matches 1 run scoreboard players set frost_limit snow 16
execute if score frost_list snow matches 2 run scoreboard players set frost_limit snow 8
execute if score frost_list snow matches 3 run scoreboard players set frost_limit snow 0
execute if score frost_list snow matches 4 run scoreboard players set frost_limit snow -8
execute if score frost_list snow matches 5 run scoreboard players set frost_limit snow -16
execute if score frost_list snow matches 6 run scoreboard players set frost_limit snow -24

scoreboard players add frost_list snow 1
execute if score frost_list snow matches 7 run scoreboard players set frost_list snow 0