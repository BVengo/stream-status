# Get new coordinates
execute store result score @s ss_x2 run data get entity @s Pos[0] 100
execute store result score @s ss_y2 run data get entity @s Pos[1] 100
execute store result score @s ss_z2 run data get entity @s Pos[2] 100

# Set afk if new coordinates are the same as stored coordinates
execute if score @s ss_x2 = @s ss_x1 if score @s ss_y2 = @s ss_y1 if score @s ss_z2 = @s ss_z1 run tag @s add ss_isAFK

# Add to corresponding afk team
execute as @s[tag=ss_isAFK, team=ss_0_overworld] run team join ss_1_afk_overworld
execute as @s[tag=ss_isAFK, team=ss_2_nether] run team join ss_3_afk_nether
execute as @s[tag=ss_isAFK, team=ss_4_end] run team join ss_5_afk_end

# Store new coordinates as old
execute store result score @s ss_x1 run data get entity @s Pos[0] 100
execute store result score @s ss_y1 run data get entity @s Pos[1] 100
execute store result score @s ss_z1 run data get entity @s Pos[2] 100

# Reset AFK checker
scoreboard players set @s ss_checkAFK 0