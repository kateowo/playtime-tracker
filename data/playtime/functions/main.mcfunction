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
execute as @a run scoreboard players operation @s t_playtime_s_total = @s t_playtime_s
## minutes
execute as @a run scoreboard players operation @s t_playtime_m /= tick internal
execute as @a run scoreboard players operation @s t_playtime_m /= 60 internal
execute as @a run scoreboard players operation @s playtime_m = @s t_playtime_m
execute as @a run scoreboard players operation @s t_playtime_m_total = @s t_playtime_m
## hours
execute as @a run scoreboard players operation @s t_playtime_h /= tick internal
execute as @a run scoreboard players operation @s t_playtime_h /= 60 internal
execute as @a run scoreboard players operation @s t_playtime_h /= 60 internal
execute as @a run scoreboard players operation @s playtime_h = @s t_playtime_h
execute as @a run scoreboard players operation @s t_playtime_h_total = @s t_playtime_h
## days
execute as @a run scoreboard players operation @s t_playtime_d /= tick internal
execute as @a run scoreboard players operation @s t_playtime_d /= 60 internal
execute as @a run scoreboard players operation @s t_playtime_d /= 60 internal
execute as @a run scoreboard players operation @s t_playtime_d /= 24 internal
execute as @a run scoreboard players operation @s playtime_d = @s t_playtime_d
execute as @a run scoreboard players operation @s t_playtime_d_total = @s t_playtime_d

# calculate mass totals
## minutes
execute as @a run scoreboard players operation @s t_playtime_m_total *= 60 internal
## hours
execute as @a run scoreboard players operation @s t_playtime_h_total *= 60 internal
execute as @a run scoreboard players operation @s t_playtime_h_total *= 60 internal
## days
execute as @a run scoreboard players operation @s t_playtime_d_total *= 24 internal
execute as @a run scoreboard players operation @s t_playtime_d_total *= 60 internal
execute as @a run scoreboard players operation @s t_playtime_d_total *= 60 internal

execute as @a run scoreboard players operation @s v_playtime_s_total = @s t_playtime_s_total
execute as @a run scoreboard players operation @s v_playtime_m_total = @s t_playtime_m_total
execute as @a run scoreboard players operation @s v_playtime_h_total = @s t_playtime_h_total
execute as @a run scoreboard players operation @s v_playtime_d_total = @s t_playtime_d_total

# remove from totals
## seconds
execute as @a run scoreboard players operation @s v_playtime_s_total -= @s t_playtime_m_total
## minutes
execute as @a run scoreboard players operation @s v_playtime_m_total -= @s t_playtime_h_total
execute as @a run scoreboard players operation @s v_playtime_m_total /= 60 internal
## hours
execute as @a run scoreboard players operation @s v_playtime_h_total -= @s t_playtime_d_total
execute as @a run scoreboard players operation @s v_playtime_h_total /= 60 internal
execute as @a run scoreboard players operation @s v_playtime_h_total /= 60 internal
## days
execute as @a run scoreboard players operation @s v_playtime_d_total /= 24 internal
execute as @a run scoreboard players operation @s v_playtime_d_total /= 60 internal
execute as @a run scoreboard players operation @s v_playtime_d_total /= 60 internal

# toggle actionbar
## /trigger playtime_display
execute as @a if score @s playtime_display matches 1.. run title @s actionbar ["",{"text":"[","color":"dark_gray"},{"text":"⌚","color":"gold"},{"text":"] ","color":"dark_gray"},{"score":{"name":"@s","objective":"v_playtime_d_total"}},":",{"score":{"name":"@s","objective":"v_playtime_h_total"}},":",{"score":{"name":"@s","objective":"v_playtime_m_total"}},":",{"score":{"name":"@s","objective":"v_playtime_s_total"}}]