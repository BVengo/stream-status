# Get new coordinates
execute as @s run function stream_status:coords/set_coords_2

# Set afk if new coordinates are the same as stored coordinates
execute if score @s ss_x2 = @s ss_x1 if score @s ss_y2 = @s ss_y1 if score @s ss_z2 = @s ss_z1 run tag @s add ss_afk
execute as @s[tag=ss_afk] run function stream_status:afk/join

# Store new coordinates as old
execute as @s run function stream_status:coords/set_coords_1

# Reset AFK checker
scoreboard players set @s ss_checkAFK 0

tellraw @s[tag=ss_afk] [{"text":"You are now ", "color":"gold"}, {"text":"AFK", "color":"gray"}]