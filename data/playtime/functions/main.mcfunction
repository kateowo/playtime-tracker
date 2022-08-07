# PLAYTIME main loop


scoreboard players enable @a playtime_display
execute as @a unless score @s defaults matches 1.. run function playtime:defaults

# calculate
execute as @a run function playtime:calc