# PLAYTIME main loop


# store in temp
execute as @a run scoreboard players operation @s t_playtime_s = @s custom.total_world_time
execute as @a run scoreboard players operation @s t_playtime_m = @s custom.total_world_time
execute as @a run scoreboard players operation @s t_playtime_h = @s custom.total_world_time
execute as @a run scoreboard players operation @s t_playtime_d = @s custom.total_world_time
# calculate
## seconds
execute as @a run scoreboard players operation @s t_playtime_s /= tick internal
execute as @a run scoreboard players operation @s playtime_s = @s t_playtime_s
## minutes
execute as @a run scoreboard players operation @s t_playtime_m /= tick internal
execute as @a run scoreboard players operation @s t_playtime_m /= 60 internal
execute as @a run scoreboard players operation @s playtime_m = @s t_playtime_m
## hours
execute as @a run scoreboard players operation @s t_playtime_h /= tick internal
execute as @a run scoreboard players operation @s t_playtime_h /= 60 internal
execute as @a run scoreboard players operation @s t_playtime_h /= 60 internal
execute as @a run scoreboard players operation @s playtime_h = @s t_playtime_h
## days
execute as @a run scoreboard players operation @s t_playtime_d /= tick internal
execute as @a run scoreboard players operation @s t_playtime_d /= 60 internal
execute as @a run scoreboard players operation @s t_playtime_d /= 60 internal
execute as @a run scoreboard players operation @s t_playtime_d /= 24 internal
execute as @a run scoreboard players operation @s playtime_d = @s t_playtime_d