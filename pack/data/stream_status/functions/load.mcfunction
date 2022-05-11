# Create old coordinates objectives
scoreboard objectives add ss_x1 dummy
scoreboard objectives add ss_y1 dummy
scoreboard objectives add ss_z1 dummy

# Create new coordinates objectives
scoreboard objectives add ss_x2 dummy
scoreboard objectives add ss_y2 dummy
scoreboard objectives add ss_z2 dummy

# Add boolean to see if the AFK status needs checking
scoreboard objectives add ss_checkAFK dummy

# Add status objective
scoreboard objectives add ss_recording trigger
scoreboard objectives add ss_available trigger
scoreboard objectives add ss_unavailable trigger

# Add game leaving objective
scoreboard objectives add ss_gamesLeft custom:leave_game

# Count number of players recording
scoreboard objectives add ss_numRecording dummy
scoreboard players set ss_dummy ss_numRecording 0

# Add non-afk teams, add colors, remove ability to see invisible teammates
team add ss_recording {"text":"Recording","color":"red"}
team add ss_available {"text":"Available","color":"green"}
team add ss_unavailable {"text":"Unavailable","color":"yellow"}

team modify ss_recording color red
team modify ss_available color green
team modify ss_unavailable color yellow

team modify ss_recording seeFriendlyInvisibles false
team modify ss_available seeFriendlyInvisibles false
team modify ss_unavailable seeFriendlyInvisibles false

# Add afk teams, add colors, remove ability to see invisible teammates
team add ss_recording_afk {"text":"AFK Recording","color":"red"}
team add ss_available_afk {"text":"AFK Available","color":"green"}
team add ss_unavailable_afk {"text":"AFK Unavailable","color":"yellow"}

team modify ss_recording_afk color red
team modify ss_available_afk color green
team modify ss_unavailable_afk color yellow

team modify ss_recording_afk seeFriendlyInvisibles false
team modify ss_available_afk seeFriendlyInvisibles false
team modify ss_unavailable_afk seeFriendlyInvisibles false

# Add AFK suffix to AFK teams
team modify ss_recording_afk suffix {"text":" [AFK]","color":"gray"}
team modify ss_available_afk suffix {"text":" [AFK]","color":"gray"}
team modify ss_unavailable_afk suffix {"text":" [AFK]","color":"gray"}