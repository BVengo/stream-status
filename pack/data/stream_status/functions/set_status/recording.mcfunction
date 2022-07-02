# Set to opposite recording value
scoreboard players set @s[tag=!ss_recording] recording 0
execute as @s[scores={recording=0}] run tag @s add ss_recording
execute as @s[scores={recording=1}] run tag @s remove ss_recording

# Add to corresponding team
execute as @s[tag=ss_recording, team=] run team join ss_recording @s
execute as @s[tag=ss_recording, team=ss_afk] run team join ss_recording_afk @s

# Remove from corresponding team
execute as @s[tag=!ss_recording, team=ss_recording] run team leave @s
execute as @s[tag=!ss_recording, team=ss_recording_afk] run team join ss_afk @s

# Reset recording checker and trigger
scoreboard players set @s recording 0

tellraw @s[tag=ss_recording] [{"text":"Recording ", "color":"red"}, {"text":"status enabled", "color":"gray"}]
tellraw @s[tag=ss_recording] [{"text":"Please follow the content creator rules, and enjoy your recording!", "color":"gray"}]

tellraw @s[tag=!ss_recording] [{"text":"You are no longer ", "color":"gold"}, {"text":"recording", "color":"red"}]