# Set tags
execute run tag @s remove ss_recording
execute run tag @s remove ss_available
execute run tag @s add ss_unavailable

# Make sure objectives match tags
scoreboard players set @s ss_recording 0
scoreboard players set @s ss_available 0

team join ss_unavailable @s

tellraw @s [{"text":"Unavailable ", "color":"yellow"}, {"text":"status enabled.", "color":"gray"}]
tellraw @s [{"text":"You are free to go about your business without content creators interacting with you as they record.", "color":"gray"}]