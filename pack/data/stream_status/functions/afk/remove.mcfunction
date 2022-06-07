# Get new coordinates
execute store result score @s ss_x2 run data get entity @s Pos[0] 100
execute store result score @s ss_y2 run data get entity @s Pos[1] 100
execute store result score @s ss_z2 run data get entity @s Pos[2] 100

# Compare against new coordinates and remove AFK if necessary
execute unless score @s ss_x2 = @s ss_x1 run tag @s remove ss_isAFK
execute unless score @s ss_y2 = @s ss_y1 run tag @s remove ss_isAFK
execute unless score @s ss_z2 = @s ss_z1 run tag @s remove ss_isAFK

# If player is no longer afk, remove from AFK team
execute as @s[tag=!ss_isAFK, team=ss_recording_afk] run team join ss_recording
execute as @s[tag=!ss_isAFK, team=ss_available_afk] run team join ss_available
execute as @s[tag=!ss_isAFK, team=ss_unavailable_afk] run team join ss_unavailable

# Set old coordinates location to new coordinates
execute store result score @s ss_x1 run data get entity @s Pos[0] 100
execute store result score @s ss_y1 run data get entity @s Pos[1] 100
execute store result score @s ss_z1 run data get entity @s Pos[2] 100

scoreboard players set @s ss_checkAFK 0