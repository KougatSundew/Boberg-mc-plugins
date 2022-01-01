scoreboard players add snowfall_speed snow 1
tellraw @s [{"text":"Snowfall ticks per second: ","color":"aqua"},{"score":{"name":"snowfall_speed","objective":"snow"}}]
execute if score snowfall_speed snow matches 30 run tellraw @s {"text":"Default","color":"green"}