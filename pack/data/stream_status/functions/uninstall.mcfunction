schedule clear stream_status:update

# Remove coordinates
scoreboard objectives remove ss_x1
scoreboard objectives remove ss_x2
scoreboard objectives remove ss_y1
scoreboard objectives remove ss_y2
scoreboard objectives remove ss_z1
scoreboard objectives remove ss_z2
scoreboard objectives remove ss_checkAFK

# Remove afk tag
tag @a remove ss_isAFK

# Remove status trigger
scoreboard objectives remove ss_recording
scoreboard objectives remove ss_available
scoreboard objectives remove ss_unavailable

scoreboard objectives add ss_numRecording dummy

# Remove status tags
tag @a remove ss_recording
tag @a remove ss_available
tag @a remove ss_unavailable

# Remove teams
team remove ss_recording
team remove ss_available
team remove ss_unavailable
team remove ss_recording_afk
team remove ss_available_afk
team remove ss_unavailable_afk