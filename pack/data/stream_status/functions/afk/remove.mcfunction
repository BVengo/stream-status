# Get new coordinates
execute store result score @s ss_x2 run data get entity @s Pos[0] 100
execute store result score @s ss_y2 run data get entity @s Pos[1] 100
execute store result score @s ss_z2 run data get entity @s Pos[2] 100

# Compare against new coordinates and remove AFK if necessary
execute unless score @s ss_x2 = @s ss_x1 run tag @s remove ss_afk
execute unless score @s ss_y2 = @s ss_y1 run tag @s remove ss_afk
execute unless score @s ss_z2 = @s ss_z1 run tag @s remove ss_afk

# If player is no longer afk, remove from AFK team
execute as @s[tag=!ss_afk, team=ss_afk] run team leave @s
execute as @s[tag=!ss_afk, team=ss_recording_afk] run team join ss_recording

# Set old coordinates location to new coordinates
execute store result score @s ss_x1 run data get entity @s Pos[0] 100
execute store result score @s ss_y1 run data get entity @s Pos[1] 100
execute store result score @s ss_z1 run data get entity @s Pos[2] 100

scoreboard players set @s ss_checkAFK 0

tellraw @s[tag=!ss_afk] [{"text":"You are no longer ", "color":"gold"}, {"text":"AFK", "color":"gray"}]