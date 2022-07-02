# Add to corresponding team
execute as @s[tag=ss_recording, team=ss_0_overworld] run team join ss_3_overworld_recording @s
execute as @s[tag=ss_recording, team=ss_1_nether] run team join ss_4_nether_recording @s
execute as @s[tag=ss_recording, team=ss_2_end] run team join ss_5_end_recording @s

execute as @s[tag=ss_recording, team=ss_9_overworld_afk] run team join ss_6_overworld_afk_recording @s
execute as @s[tag=ss_recording, team=ss_10_nether_afk] run team join ss_7_nether_recording_afk @s
execute as @s[tag=ss_recording, team=ss_11_end_afk] run team join ss_8_end_recording_afk @s