
#initialise install
scoreboard objectives add temp_snow dummy
scoreboard players set temp temp_snow 1
execute if score version snow matches 0.. run scoreboard players set temp temp_snow 0
execute if score temp temp_snow matches 1 run function snow:install
scoreboard objectives remove temp_snow

#initialise update
execute if score version snow matches ..200 run function snow:updates/201
execute if score version snow matches ..201 run function snow:updates/202
execute if score version snow matches ..202 run function snow:updates/203
execute if score version snow matches ..299 run function snow:updates/300
execute if score version snow matches ..399 run function snow:updates/400
execute if score version snow matches ..400 run function snow:updates/401

#initialise compatability
scoreboard players set classic snow 1
function snow:datapackcompat/terralith_test
