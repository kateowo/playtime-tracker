# PLAYTIME /reload


# internal stuff
scoreboard objectives add defaults dummy
scoreboard objectives add internal dummy
scoreboard players set 60 internal 60
scoreboard players set 24 internal 24
scoreboard players set tick internal 20

# create scoreboard
## uses same variable name as "Stats Tracker" (compatiable)
scoreboard objectives add custom.total_world_time minecraft.custom:minecraft.total_world_time

# individual settings
## seconds
scoreboard objectives add t_playtime_s dummy
scoreboard objectives add playtime_s dummy "Playtime (seconds)"
scoreboard objectives add t_playtime_s_total dummy
scoreboard objectives add v_playtime_s_total dummy
## minutes
scoreboard objectives add t_playtime_m dummy
scoreboard objectives add playtime_m dummy "Playtime (minutes)"
scoreboard objectives add t_playtime_m_total dummy
scoreboard objectives add v_playtime_m_total dummy
## hours
scoreboard objectives add t_playtime_h dummy
scoreboard objectives add playtime_h dummy "Playtime (hours)"
scoreboard objectives add t_playtime_h_total dummy
scoreboard objectives add v_playtime_h_total dummy
## days
scoreboard objectives add t_playtime_d dummy
scoreboard objectives add playtime_d dummy "Playtime (days)"
scoreboard objectives add t_playtime_d_total dummy
scoreboard objectives add v_playtime_d_total dummy

# toggle actionbar
## /trigger playtime_display
scoreboard objectives add playtime_display trigger