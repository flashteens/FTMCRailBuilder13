# Get speed limit changes. (Actual speed limit = ftbctargetspeed + 29)
# If ftbctargetspeed is under zero (i.e. not boosted by BCart Engine at all),
# then just consider it as if ftbctargetspeed = 0.
scoreboard players operation @s ftbc_debug_ts = @s ftbctargetspeed
scoreboard players set @s[scores={ftbc_debug_ts=..-1}] ftbc_debug_ts 0
scoreboard players add @s ftbc_debug_ts 29

# Get current speed (if the minecart is fully sped up by powered rails). (Actual speed = ftbcspeed + 29)
scoreboard players operation @s ftbc_debug_cs = @s ftbcspeed
scoreboard players add @s ftbc_debug_cs 29

# Get current X and Z coordinates of the minecart
execute store result score @s ftbc_debug_x0 run data get entity @s Pos[0] 1
execute store result score @s ftbc_debug_z0 run data get entity @s Pos[2] 1

# Calculate the distance for speed tween.
function ftmc:bcartv2/engine/internal/calculate_tween_dist
scoreboard players operation @s ftbc_debug_d = @s ftbc_reg_0

# Show the messages.
execute if entity @s[tag=!zh] run function ftmc:bcartv2/engine/internal/show_debug_speed_limit_en
execute if entity @s[tag=zh] run function ftmc:bcartv2/engine/internal/show_debug_speed_limit_zh
