
execute if score stability_list snow matches 0 run scoreboard players set stability_limit snow -64

execute if score stability_list snow matches 1 run scoreboard players set stability_limit snow -24
execute if score stability_list snow matches 2 run scoreboard players set stability_limit snow -16
execute if score stability_list snow matches 3 run scoreboard players set stability_limit snow -8
execute if score stability_list snow matches 4 run scoreboard players set stability_limit snow 16
execute if score stability_list snow matches 5 run scoreboard players set stability_limit snow 8
execute if score stability_list snow matches 6 run scoreboard players set stability_limit snow 16
execute if score stability_list snow matches 7 run scoreboard players set stability_limit snow 24
execute if score stability_list snow matches 8 run scoreboard players set stability_limit snow 32
execute if score stability_list snow matches 9 run scoreboard players set stability_limit snow 40
execute if score stability_list snow matches 10 run scoreboard players set stability_limit snow 48
execute if score stability_list snow matches 11 run scoreboard players set stability_limit snow 56
execute if score stability_list snow matches 12 run scoreboard players set stability_limit snow 64

execute if score stability_list snow matches 13 run scoreboard players set stability_limit snow 0
execute if score stability_list snow matches 14 run scoreboard players set stability_limit snow 8
execute if score stability_list snow matches 15 run scoreboard players set stability_limit snow 16
execute if score stability_list snow matches 16 run scoreboard players set stability_limit snow 24
execute if score stability_list snow matches 17 run scoreboard players set stability_limit snow 32
execute if score stability_list snow matches 18 run scoreboard players set stability_limit snow 40
execute if score stability_list snow matches 19 run scoreboard players set stability_limit snow 48

scoreboard players add stability_list snow 1
execute if score stability_list snow matches 20 run scoreboard players set stability_list snow 0