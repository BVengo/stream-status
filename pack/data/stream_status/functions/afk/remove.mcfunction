# Get new coordinates
execute as @s run function stream_status:coords/set_coords_2

# Compare against new coordinates and remove AFK if necessary
execute unless score @s ss_x2 = @s ss_x1 run tag @s remove ss_afk
execute unless score @s ss_y2 = @s ss_y1 run tag @s remove ss_afk
execute unless score @s ss_z2 = @s ss_z1 run tag @s remove ss_afk

execute as @s[tag=!ss_afk] run function stream_status:afk/leave

# Set old coordinates location to new coordinates
execute as @s run function stream_status:coords/set_coords_1

scoreboard players set @s ss_checkAFK 0

tellraw @s[tag=!ss_afk] [{"text":"You are no longer ", "color":"gold"}, {"text":"AFK", "color":"gray"}]