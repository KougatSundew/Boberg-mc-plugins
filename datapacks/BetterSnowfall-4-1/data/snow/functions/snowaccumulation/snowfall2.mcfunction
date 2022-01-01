#snowfall loop, dsiding how many times in this tick snowaccumulations are attempted
execute if score snowfall snow matches 20.. run function snow:snowaccumulation/snow_marker
execute if score snowfall snow matches 20.. run scoreboard players remove snowfall snow 20
execute if score snowfall snow matches 20.. run function snow:snowaccumulation/snowfall2
