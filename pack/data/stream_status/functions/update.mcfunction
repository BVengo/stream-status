schedule function stream_status:update 1s

# Check how many times players have left the game
execute as @a[scores={ss_gamesLeft=1..}] run function stream_status:welcome

# Check if players are afk every 150 ticks (5 minutes)
scoreboard players add @a ss_checkAFK 1
execute as @a[tag=!ss_afk, scores={ss_checkAFK=150..}] run function stream_status:afk/check

# Check if a player is no longer AFK
execute as @a[tag=ss_afk] run function stream_status:afk/remove

# Enable permission to use the triggers
scoreboard players enable @a recording
scoreboard players enable @a afk

execute as @a[scores={recording=1}] run function stream_status:trigger/recording
execute as @a[scores={afk=1}] run function stream_status:trigger/afk

execute as @a run function stream_status:dimension/join