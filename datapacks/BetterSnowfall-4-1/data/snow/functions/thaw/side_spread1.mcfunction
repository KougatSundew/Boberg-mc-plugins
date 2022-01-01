#reset melt_side_spread score
#this score is to make the following loop end at least after 4 times
scoreboard players set melt_side_spread snow 0

#start the two part finite melt-spread-loop
function snow:thaw/side_spread2