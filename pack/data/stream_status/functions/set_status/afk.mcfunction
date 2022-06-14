# Set to opposite AFK value
scoreboard players set @s[tag=!ss_isAFK] afk 0
execute as @s[scores={afk=0}] run tag @s add ss_isAFK
execute as @s[scores={afk=1}] run tag @s remove ss_isAFK

# Add to corresponding afk team
execute as @s[tag=ss_isAFK, team=ss_recording] run team join ss_recording_afk
execute as @s[tag=ss_isAFK, team=ss_available] run team join ss_available_afk
execute as @s[tag=ss_isAFK, team=ss_unavailable] run team join ss_unavailable_afk

# Remove from afk team
execute as @s[tag=!ss_isAFK, team=ss_recording_afk] run team join ss_recording
execute as @s[tag=!ss_isAFK, team=ss_available_afk] run team join ss_available
execute as @s[tag=!ss_isAFK, team=ss_unavailable_afk] run team join ss_unavailable

# Store new coordinates as old
execute store result score @s ss_x1 run data get entity @s Pos[0] 100
execute store result score @s ss_y1 run data get entity @s Pos[1] 100
execute store result score @s ss_z1 run data get entity @s Pos[2] 100

# Reset AFK checker and trigger
scoreboard players set @s ss_checkAFK 0
scoreboard players set @s afk 0

tellraw @s[tag=ss_isAFK] [{"text":"You are now ", "color":"gold"}, {"text":"AFK", "color":"gray"}]
tellraw @s[tag=!ss_isAFK] [{"text":"You are no longer ", "color":"gold"}, {"text":"AFK", "color":"gray"}]