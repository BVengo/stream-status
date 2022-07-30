# Remove from afk team
execute as @s[tag=!ss_recording, team=ss_3_overworld_recording] run team join ss_0_overworld @s
execute as @s[tag=!ss_recording, team=ss_4_nether_recording] run team join ss_1_nether @s
execute as @s[tag=!ss_recording, team=ss_5_end_recording] run team join ss_2_end @s

execute as @s[tag=!ss_recording, team=ss_6_overworld_afk_recording] run team join ss_9_overworld_afk @s
execute as @s[tag=!ss_recording, team=ss_7_nether_recording_afk] run team join ss_10_nether_afk @s
execute as @s[tag=!ss_recording, team=ss_8_end_recording_afk] run team join ss_11_end_afk @s