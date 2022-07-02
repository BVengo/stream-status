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
scoreboard objectives add recording trigger
scoreboard objectives add afk trigger

# Add game leaving objective
scoreboard objectives add ss_gamesLeft custom:leave_game

# Count number of players recording
scoreboard objectives add ss_numRecording dummy
scoreboard players set ss_dummy ss_numRecording 0

# Add teams
team add ss_0_overworld [{"text":"Overworld","color":"dark_green"}]
team add ss_1_nether [{"text":"Nether","color":"red"}]
team add ss_2_end [{"text":"End","color":"dark_purple"}]
team add ss_3_overworld_recording [{"text":"Overworld","color":"dark_green"}, {"text":" Recording ", "color":"red"}]
team add ss_4_nether_recording [{"text":"Nether","color":"red"}, {"text":" Recording ", "color":"red"}]
team add ss_5_end_recording [{"text":"End","color":"dark_purple"}, {"text":" Recording ", "color":"red"}]
team add ss_6_overworld_afk_recording [{"text":"Overworld","color":"dark_green"}, {"text":" AFK","color":"gray"}, {"text":" Recording ", "color":"red"}]
team add ss_7_nether_recording_afk [{"text":"Nether","color":"red"}, {"text":" AFK","color":"gray"}, {"text":" Recording ", "color":"red"}]
team add ss_8_end_recording_afk [{"text":"End","color":"dark_purple"}, {"text":" AFK","color":"gray"}, {"text":" Recording ", "color":"red"}]
team add ss_9_overworld_afk [{"text":"Overworld","color":"dark_green"}, {"text":" AFK","color":"gray"}]
team add ss_10_nether_afk [{"text":"Nether","color":"red"}, {"text":" AFK","color":"gray"}]
team add ss_11_end_afk [{"text":"End","color":"dark_purple"}, {"text":" AFK","color":"gray"}]

# Set team colours
team modify ss_0_overworld color dark_green
team modify ss_1_nether color red
team modify ss_2_end color dark_purple
team modify ss_3_overworld_recording color dark_green
team modify ss_4_nether_recording color red
team modify ss_5_end_recording color dark_purple
team modify ss_6_overworld_afk_recording color dark_green
team modify ss_7_nether_recording_afk color red
team modify ss_8_end_recording_afk color dark_purple
team modify ss_9_overworld_afk color dark_green
team modify ss_10_nether_afk color red
team modify ss_11_end_afk color dark_purple

# Add recording or AFK prefixes to teams
# team modify ss_3_overworld_recording prefix [{"text":"● ", "color":"red"}]
# team modify ss_4_nether_recording prefix [{"text":"● ", "color":"red"}]
# team modify ss_5_end_recording prefix [{"text":"● ", "color":"red"}]
# team modify ss_6_overworld_afk_recording prefix [{"text":"●", "color":"gray"}, {"text":"● ", "color":"red"}]
# team modify ss_7_nether_recording_afk prefix [{"text":"●", "color":"gray"}, {"text":"● ", "color":"red"}]
# team modify ss_8_end_recording_afk prefix [{"text":"●", "color":"gray"}, {"text":"● ", "color":"red"}]
# team modify ss_9_overworld_afk prefix [{"text":"● ", "color":"gray"}]
# team modify ss_10_nether_afk prefix [{"text":"● ", "color":"gray"}]
# team modify ss_11_end_afk prefix [{"text":"● ", "color":"gray"}]

team modify ss_3_overworld_recording suffix [{"text":" ●", "color":"red"}]
team modify ss_4_nether_recording suffix [{"text":" ●", "color":"red"}]
team modify ss_5_end_recording suffix [{"text":" ●", "color":"red"}]
team modify ss_6_overworld_afk_recording suffix [{"text":" ●", "color":"gray"}, {"text":"●", "color":"red"}]
team modify ss_7_nether_recording_afk suffix [{"text":" ●", "color":"gray"}, {"text":"●", "color":"red"}]
team modify ss_8_end_recording_afk suffix [{"text":" ●", "color":"gray"}, {"text":"●", "color":"red"}]
team modify ss_9_overworld_afk suffix [{"text":" ●", "color":"gray"}]
team modify ss_10_nether_afk suffix [{"text":" ●", "color":"gray"}]
team modify ss_11_end_afk suffix [{"text":" ●", "color":"gray"}]

# Fix teams being able to see invisible teammates
team modify ss_0_overworld seeFriendlyInvisibles false
team modify ss_1_nether seeFriendlyInvisibles false
team modify ss_2_end seeFriendlyInvisibles false
team modify ss_3_overworld_recording seeFriendlyInvisibles false
team modify ss_4_nether_recording seeFriendlyInvisibles false
team modify ss_5_end_recording seeFriendlyInvisibles false
team modify ss_6_overworld_afk_recording seeFriendlyInvisibles false
team modify ss_7_nether_recording_afk seeFriendlyInvisibles false
team modify ss_8_end_recording_afk seeFriendlyInvisibles false
team modify ss_9_overworld_afk seeFriendlyInvisibles false
team modify ss_10_nether_afk seeFriendlyInvisibles false
team modify ss_11_end_afk seeFriendlyInvisibles false