# Set to opposite recording value
scoreboard players set @s[tag=!ss_recording] recording 0
execute as @s[scores={recording=0}] run tag @s add ss_recording
execute as @s[scores={recording=1}] run tag @s remove ss_recording

# Join or leave recording team
execute as @s[tag=ss_recording] run function stream_status:recording/join
execute as @s[tag=!ss_recording] run function stream_status:recording/leave

# Reset recording checker and trigger
scoreboard players set @s recording 0

tellraw @s[tag=ss_recording] [{"text":"Recording ", "color":"red"}, {"text":"status enabled", "color":"gray"}]
tellraw @s[tag=ss_recording] [{"text":"Please follow the content creator rules, and enjoy your recording!", "color":"gray"}]

tellraw @s[tag=!ss_recording] [{"text":"You are no longer ", "color":"gold"}, {"text":"recording", "color":"red"}]