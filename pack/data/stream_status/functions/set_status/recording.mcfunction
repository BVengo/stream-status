# Set tags
execute run tag @s remove ss_available
execute run tag @s remove ss_unavailable
execute run tag @s add ss_recording

# Make sure objectives match tags
scoreboard players set @s ss_available 0
scoreboard players set @s ss_unavailable 0

team join ss_recording @s

tellraw @s [{"text":"Recording ", "color":"red"}, {"text":"status enabled", "color":"gray"}]
tellraw @s [{"text":"Please follow the content creator rules, and enjoy your recording!", "color":"gray"}]