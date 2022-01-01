
#join-cooldown to reduce gliches with biomes
execute as @a if score @s snow_join matches 1 run scoreboard players set @s snow_playertimer 0
scoreboard players set @a snow_join 0
execute as @a if score @s snow_playertimer matches ..199 run scoreboard players add @s snow_playertimer 1

#snow accumulation
execute unless score snowfall_speed snow matches 0 as @r[gamemode=!spectator] at @s if score @s snow_playertimer matches 200 if predicate snow:rain_or_thunder run function snow:snowaccumulation/snowfall1

#snow thaw
execute unless score snowthaw_speed snow matches 0 as @r[gamemode=!spectator] at @s if score @s snow_playertimer matches 200 unless predicate snow:rain_or_thunder run function snow:thaw/thaw1
