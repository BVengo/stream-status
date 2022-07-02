# Get new coordinates
execute store result score @s ss_x2 run data get entity @s Pos[0] 100
execute store result score @s ss_y2 run data get entity @s Pos[1] 100
execute store result score @s ss_z2 run data get entity @s Pos[2] 100

# Set afk if new coordinates are the same as stored coordinates
execute if score @s ss_x2 = @s ss_x1 if score @s ss_y2 = @s ss_y1 if score @s ss_z2 = @s ss_z1 run tag @s add ss_afk

# Add to corresponding afk team
execute as @s[tag=ss_afk] run team join ss_afk @s
execute as @s[tag=ss_afk, team=ss_recording] run team join ss_recording_afk @s

# Store new coordinates as old
execute store result score @s ss_x1 run data get entity @s Pos[0] 100
execute store result score @s ss_y1 run data get entity @s Pos[1] 100
execute store result score @s ss_z1 run data get entity @s Pos[2] 100

# Reset AFK checker
scoreboard players set @s ss_checkAFK 0

tellraw @s[tag=ss_afk] [{"text":"You are now ", "color":"gold"}, {"text":"AFK", "color":"gray"}]