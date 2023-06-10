# PLAYTIME
## toggle event
## switch


## state of 0: visibility off
## state of 1: visibility on

execute if score @s playtime_display matches 1.. unless score @s kate_store.playtime matches 1.. run function playtime:event/on

execute if score @s playtime_display matches 1.. if score @s kate_store.playtime matches 1.. run function playtime:event/off

scoreboard players set @s playtime_display 0