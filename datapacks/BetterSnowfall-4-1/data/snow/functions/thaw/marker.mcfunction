#summon marker
summon marker ~ ~ ~ {Tags:["thaw_marker"]}

#positionate marker
spreadplayers ~ ~ 0 108 false @e[tag=thaw_marker]
execute as @e[tag=thaw_marker] at @s run function snow:gravity
execute as @e[tag=thaw_marker] at @s if block ~ ~-1 ~ #leaves if predicate snow:leaves1 run function snow:gravity_leaves

execute as @e[tag=thaw_marker] at @s run function snow:thaw/test_place

#remove marker at the end of the function-chain
kill @e[tag=thaw_marker]