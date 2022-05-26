# Set tags
execute run tag @s remove ss_recording
execute run tag @s remove ss_unavailable
execute run tag @s add ss_available

# Make sure objectives match tags
scoreboard players set @s ss_recording 0
scoreboard players set @s ss_unavailable 0

team join ss_available @s

tellraw @s [{"text":"Available ", "color":"green"}, {"text":"status enabled", "color":"gray"}]
tellraw @s [{"text":"You have tagged yourself as happy to participate with any content creators that come your way!", "color":"gray"}]