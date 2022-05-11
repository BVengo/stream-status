schedule function stream_status:update 1s

# Make sure all players are on a team
execute as @a run function stream_status:set_status/missing

# Check how many times players have left the game
execute as @a[scores={ss_gamesLeft=1..}] run function stream_status:welcome

# Check if players are afk every 150 ticks (5 minutes)
scoreboard players add @a ss_checkAFK 1
execute as @a[tag=!ss_isAFK, scores={ss_checkAFK=150..}] run function stream_status:afk/check

# Check if a player is no longer AFK
execute as @a[tag=ss_isAFK] run function stream_status:afk/remove

# Enable permission to use the triggers
scoreboard players enable @a ss_recording
scoreboard players enable @a ss_available
scoreboard players enable @a ss_unavailable

execute as @a[tag=!ss_recording, scores={ss_recording=1}] run function stream_status:set_status/recording
execute as @a[tag=!ss_available, scores={ss_available=1}] run function stream_status:set_status/available
execute as @a[tag=!ss_unavailable, scores={ss_unavailable=1}] run function stream_status:set_status/unavailable