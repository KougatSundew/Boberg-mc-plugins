
#adds 1 for the finite loop timer score
scoreboard players add melt_side_spread snow 1

#ends the loop if score is 5
execute if score melt_side_spread snow matches 5 run scoreboard players set melt_side_spread snow 0

#the loop
execute unless score melt_side_spread snow matches 0 run function snow:thaw/side_spread3