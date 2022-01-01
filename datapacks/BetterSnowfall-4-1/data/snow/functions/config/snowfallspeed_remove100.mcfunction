execute if score snowfall_speed snow matches 0..99 run scoreboard players set snowfall_speed snow 0
execute unless score snowfall_speed snow matches 0..99 run scoreboard players remove snowfall_speed snow 100
tellraw @s [{"text":"Snowfall ticks per second: ","color":"aqua"},{"score":{"name":"snowfall_speed","objective":"snow"}}]
execute if score snowfall_speed snow matches 30 run tellraw @s {"text":"Default","color":"green"}