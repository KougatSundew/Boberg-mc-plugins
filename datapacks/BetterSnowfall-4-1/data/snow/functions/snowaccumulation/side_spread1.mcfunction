#reset snow_side_spread score
#this score is to make the following loop end at least after 4 times
scoreboard players set snow_side_spread snow 0

#start the two part finite snow-spread-loop
function snow:snowaccumulation/side_spread2