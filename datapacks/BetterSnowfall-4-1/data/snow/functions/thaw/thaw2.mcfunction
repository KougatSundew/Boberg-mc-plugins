#snowthaw loop, desiding how many times in this tick snowmelts are attempted
execute if score snowthaw snow matches 20.. run function snow:thaw/marker
execute if score snowthaw snow matches 20.. run scoreboard players remove snowthaw snow 20
execute if score snowthaw snow matches 20.. run function snow:thaw/thaw2
