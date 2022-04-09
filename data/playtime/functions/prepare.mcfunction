# PLAYTIME /reload


# internal stuff
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
scoreboard objectives add playtime_s dummy
## minutes
scoreboard objectives add t_playtime_m dummy
scoreboard objectives add playtime_m dummy
## hours
scoreboard objectives add t_playtime_h dummy
scoreboard objectives add playtime_h dummy
## days
scoreboard objectives add t_playtime_d dummy
scoreboard objectives add playtime_d dummy