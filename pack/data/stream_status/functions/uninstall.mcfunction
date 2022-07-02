schedule clear stream_status:update

# Remove coordinates
scoreboard objectives remove ss_x1
scoreboard objectives remove ss_x2
scoreboard objectives remove ss_y1
scoreboard objectives remove ss_y2
scoreboard objectives remove ss_z1
scoreboard objectives remove ss_z2
scoreboard objectives remove ss_checkAFK

# Remove status trigger
scoreboard objectives remove recording
scoreboard objectives remove afk

# Remove game leaving objective
scoreboard objectives remove ss_gamesLeft

# Count number of players recording
scoreboard objectives remove ss_numRecording

# Remove status tags
tag @a remove ss_recording
tag @a remove ss_afk

# Remove teams
team remove ss_0_overworld
team remove ss_1_nether
team remove ss_2_end
team remove ss_3_overworld_recording
team remove ss_4_nether_recording
team remove ss_5_end_recording
team remove ss_6_overworld_afk_recording
team remove ss_7_nether_recording_afk
team remove ss_8_end_recording_afk
team remove ss_9_overworld_afk
team remove ss_10_nether_afk
team remove ss_11_end_afk