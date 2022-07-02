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
team remove ss_recording
team remove ss_afk
team remove ss_recording_afk