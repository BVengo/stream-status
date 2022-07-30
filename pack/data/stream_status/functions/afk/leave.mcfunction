# Remove from afk team
execute as @s[tag=!ss_afk, team=ss_9_overworld_afk] run team join ss_0_overworld @s
execute as @s[tag=!ss_afk, team=ss_10_nether_afk] run team join ss_1_nether @s
execute as @s[tag=!ss_afk, team=ss_11_end_afk] run team join ss_2_end @s

execute as @s[tag=!ss_afk, team=ss_6_overworld_afk_recording] run team join ss_3_overworld_recording @s
execute as @s[tag=!ss_afk, team=ss_7_nether_recording_afk] run team join ss_4_nether_recording @s
execute as @s[tag=!ss_afk, team=ss_8_end_recording_afk] run team join ss_5_end_recording @s