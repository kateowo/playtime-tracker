# PLAYTIME main loop


# store in temp
execute as @a run scoreboard players operation @s playtime_m = @s custom.total_world_time
execute as @a run scoreboard players operation @s playtime_h = @s custom.total_world_time
execute as @a run scoreboard players operation @s playtime_d = @s custom.total_world_time
# calculate
