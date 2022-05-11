# Message current status
execute if entity @s[tag=ss_available] run tellraw @s [{"text":"Your current status is '", "color":"gray"}, {"text":"Available", "color":"green"}, {"text":"'", "color":"gray"}]
execute if entity @s[tag=ss_unavailable] run tellraw @s [{"text":"Your current status is '", "color":"gray"}, {"text":"Unavailable", "color":"yellow"}, {"text":"'", "color":"gray"}]
execute if entity @s[tag=ss_recording] run tellraw @s [{"text":"Your current status is '", "color":"gray"}, {"text":"Recording", "color":"red"}, {"text":"'", "color":"gray"}]

# Message number of players recording
execute as @s run function stream_status:count_recording