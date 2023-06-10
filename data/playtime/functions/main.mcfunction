# PLAYTIME
## main loop


# toggle
execute as @a if score @s playtime_display matches 1.. run function playtime:event/switch
scoreboard players enable @a playtime_display

# calc
execute as @a run function playtime:calc

execute as @a unless score @s defaults matches 1.. run function playtime:defaults