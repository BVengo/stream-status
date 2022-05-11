execute as @a[tag=ss_recording] run scoreboard players add ss_dummy ss_numRecording 1
tellraw @s [{"text":"There are currently ", "color":"gray"},{"score":{"name":"ss_dummy","objective":"ss_numRecording"}, "color":"gold"},{"text":" players recording.", "color":"gray"}]
scoreboard players set ss_dummy ss_numRecording 0

scoreboard players set @s ss_gamesLeft 0