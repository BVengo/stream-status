# Set to opposite AFK value
scoreboard players set @s[tag=!ss_afk] afk 0
execute as @s[scores={afk=0}] run tag @s add ss_afk
execute as @s[scores={afk=1}] run tag @s remove ss_afk

# Add to corresponding afk team
execute as @s[tag=ss_afk, team=] run team join ss_afk @s
execute as @s[tag=ss_afk, team=ss_recording] run team join ss_recording_afk @s

# Remove from afk team
execute as @s[tag=!ss_afk, team=ss_afk] run team leave @s
execute as @s[tag=!ss_afk, team=ss_recording_afk] run team join ss_recording @s

# Store new coordinates as old
execute store result score @s ss_x1 run data get entity @s Pos[0] 100
execute store result score @s ss_y1 run data get entity @s Pos[1] 100
execute store result score @s ss_z1 run data get entity @s Pos[2] 100

# Reset AFK checker and trigger
scoreboard players set @s ss_checkAFK 0
scoreboard players set @s afk 0

tellraw @s[tag=ss_afk] [{"text":"You are now ", "color":"gold"}, {"text":"AFK", "color":"gray"}]
tellraw @s[tag=!ss_afk] [{"text":"You are no longer ", "color":"gold"}, {"text":"AFK", "color":"gray"}]