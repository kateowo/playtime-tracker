# PLAYTIME calc


# store in temp
scoreboard players operation @s t_playtime_s = @s custom.total_world_time
scoreboard players operation @s t_playtime_m = @s custom.total_world_time
scoreboard players operation @s t_playtime_h = @s custom.total_world_time
scoreboard players operation @s t_playtime_d = @s custom.total_world_time
# calculate
## seconds
scoreboard players operation @s t_playtime_s /= tick internal
scoreboard players operation @s playtime_s = @s t_playtime_s
scoreboard players operation @s t_playtime_s_total = @s t_playtime_s
## minutes
scoreboard players operation @s t_playtime_m /= tick internal
scoreboard players operation @s t_playtime_m /= 60 internal
scoreboard players operation @s playtime_m = @s t_playtime_m
scoreboard players operation @s t_playtime_m_total = @s t_playtime_m
## hours
scoreboard players operation @s t_playtime_h /= tick internal
scoreboard players operation @s t_playtime_h /= 60 internal
scoreboard players operation @s t_playtime_h /= 60 internal
scoreboard players operation @s playtime_h = @s t_playtime_h
scoreboard players operation @s t_playtime_h_total = @s t_playtime_h
## days
scoreboard players operation @s t_playtime_d /= tick internal
scoreboard players operation @s t_playtime_d /= 60 internal
scoreboard players operation @s t_playtime_d /= 60 internal
scoreboard players operation @s t_playtime_d /= 24 internal
scoreboard players operation @s playtime_d = @s t_playtime_d
scoreboard players operation @s t_playtime_d_total = @s t_playtime_d

# calculate mass totals
## minutes
scoreboard players operation @s t_playtime_m_total *= 60 internal
## hours
scoreboard players operation @s t_playtime_h_total *= 60 internal
scoreboard players operation @s t_playtime_h_total *= 60 internal
## days
scoreboard players operation @s t_playtime_d_total *= 24 internal
scoreboard players operation @s t_playtime_d_total *= 60 internal
scoreboard players operation @s t_playtime_d_total *= 60 internal

scoreboard players operation @s v_playtime_s_total = @s t_playtime_s_total
scoreboard players operation @s v_playtime_m_total = @s t_playtime_m_total
scoreboard players operation @s v_playtime_h_total = @s t_playtime_h_total
scoreboard players operation @s v_playtime_d_total = @s t_playtime_d_total

# remove from totals
## seconds
scoreboard players operation @s v_playtime_s_total -= @s t_playtime_m_total
## minutes
scoreboard players operation @s v_playtime_m_total -= @s t_playtime_h_total
scoreboard players operation @s v_playtime_m_total /= 60 internal
## hours
scoreboard players operation @s v_playtime_h_total -= @s t_playtime_d_total
scoreboard players operation @s v_playtime_h_total /= 60 internal
scoreboard players operation @s v_playtime_h_total /= 60 internal
## days
scoreboard players operation @s v_playtime_d_total /= 24 internal
scoreboard players operation @s v_playtime_d_total /= 60 internal
scoreboard players operation @s v_playtime_d_total /= 60 internal

# append 0 (if eligible)
## seconds
scoreboard players reset @s t_playtime_s_0
execute if score @s v_playtime_s_total < 10 internal run scoreboard players set @s t_playtime_s_0 0
## minutes
scoreboard players reset @s t_playtime_m_0
execute if score @s v_playtime_m_total < 10 internal run scoreboard players set @s t_playtime_m_0 0
## hours
scoreboard players reset @s t_playtime_h_0
execute if score @s v_playtime_h_total < 10 internal run scoreboard players set @s t_playtime_h_0 0
## days
scoreboard players reset @s t_playtime_d_0
execute if score @s v_playtime_d_total < 10 internal run scoreboard players set @s t_playtime_d_0 0

# toggle actionbar
## /trigger playtime_display
execute if score @s playtime_display matches 1.. run title @s actionbar ["",{"text":"[","color":"dark_gray"},{"text":"⌚","color":"gold"},{"text":"] ","color":"dark_gray"},{"score":{"name":"@s","objective":"t_playtime_d_0"}},{"score":{"name":"@s","objective":"v_playtime_d_total"}},":",{"score":{"name":"@s","objective":"t_playtime_h_0"}},{"score":{"name":"@s","objective":"v_playtime_h_total"}},":",{"score":{"name":"@s","objective":"t_playtime_m_0"}},{"score":{"name":"@s","objective":"v_playtime_m_total"}},":",{"score":{"name":"@s","objective":"t_playtime_s_0"}},{"score":{"name":"@s","objective":"v_playtime_s_total"}}]