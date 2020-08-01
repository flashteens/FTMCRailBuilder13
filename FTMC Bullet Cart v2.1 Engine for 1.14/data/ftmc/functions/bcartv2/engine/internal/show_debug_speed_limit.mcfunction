# Get speed limit changes. (Actual speed limit = ftbctargetspeed + 29)
# For v2.0-v2.1, the minimum value of ftbctargetspeed = 0 (actually 29 km/h),
# and for v2.2+, the minimum value of ftbctargetspeed = -28 (actually 1 km/h).
scoreboard players operation @s ftbc_debug_ts = @s ftbctargetspeed
scoreboard players set @s[scores={ftbc_debug_ts=..-1},tag=!ftbc_is_v22_enabled] ftbc_debug_ts 0
scoreboard players set @s[scores={ftbc_debug_ts=..-29},tag=ftbc_is_v22_enabled] ftbc_debug_ts -28
scoreboard players add @s ftbc_debug_ts 29

# Get current speed (if the minecart is fully sped up by powered rails). (Actual speed = ftbcspeed + 29)
scoreboard players operation @s ftbc_debug_cs = @s ftbcspeed
scoreboard players add @s ftbc_debug_cs 29

# Get current X and Z coordinates of the minecart
execute store result score @s ftbc_debug_x0 run data get entity @s Pos[0] 1
execute store result score @s ftbc_debug_z0 run data get entity @s Pos[2] 1

# Calculate the acceleration value in km/h/s * 1000 (i.e. m/h/s).
scoreboard players set @s ftbc_debug_a 20000
scoreboard players operation @s ftbc_debug_a /= @s ftbc_accelperiod

# Calculate the distance for speed tween.
function ftmc:bcartv2/engine/internal/calculate_tween_dist
scoreboard players operation @s ftbc_debug_d = @s ftbc_reg_0

# Show the messages.
execute if entity @s[tag=!zh] run function ftmc:bcartv2/engine/internal/show_debug_speed_limit_en
execute if entity @s[tag=zh] run function ftmc:bcartv2/engine/internal/show_debug_speed_limit_zh
