# Message current status
execute if entity @s[tag=ss_recording] run tellraw @s [{"text":"Your status is currently set as '", "color":"gray"}, {"text":"Recording", "color":"red"}, {"text":"'", "color":"gray"}]

# Message number of players recording
execute as @s run function stream_status:count_recording