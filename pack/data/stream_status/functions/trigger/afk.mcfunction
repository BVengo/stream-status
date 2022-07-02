# Set to opposite AFK value
scoreboard players set @s[tag=!ss_afk] afk 0
execute as @s[scores={afk=0}] run tag @s add ss_afk
execute as @s[scores={afk=1}] run tag @s remove ss_afk

# Join or leave AFK team
execute as @s[tag=ss_afk] run function stream_status:afk/join
execute as @s[tag=!ss_afk] run function stream_status:afk/leave


# Store new coordinates as old
execute as @s run function stream_status:coords/set_coords_1

# Reset AFK checker and trigger
scoreboard players set @s ss_checkAFK 0
scoreboard players set @s afk 0

tellraw @s[tag=ss_afk] [{"text":"You are now ", "color":"gold"}, {"text":"AFK", "color":"gray"}]
tellraw @s[tag=!ss_afk] [{"text":"You are no longer ", "color":"gold"}, {"text":"AFK", "color":"gray"}]