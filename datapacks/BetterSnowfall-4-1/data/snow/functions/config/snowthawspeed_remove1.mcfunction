execute unless score snowthaw_speed snow matches 0 run scoreboard players remove snowthaw_speed snow 1
tellraw @s [{"text":"Snowthaw ticks per second: ","color":"aqua"},{"score":{"name":"snowthaw_speed","objective":"snow"}}]
execute if score snowthaw_speed snow matches 5 run tellraw @s {"text":"Default","color":"green"}