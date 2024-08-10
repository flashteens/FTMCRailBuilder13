data merge entity @s[tag=!ftbc_is_v22_enabled] {Motion:[1d,0d,0d]}
data merge entity @s[tag=!ftbc_is_v22_enabled,scores={bulletcartns=1..}] {Motion:[1d,0d,1d]}
data merge entity @s[tag=!ftbc_is_v22_enabled,scores={bulletcartns=..-1}] {Motion:[1d,0d,-1d]}

function ftmc:bcartv2/engine/fixtp/load_motion

# First iteration: run teleportation based on the current location of @s, so all the following values can be accumulated according to the bit pattern tags.
execute as @s[tag=ftbc_speed_bit_0] if score @s ftbc_recur_count matches 0 at @s run teleport @s ~0.0139 ~ ~
execute as @s[tag=ftbc_speed_bit_1] if score @s ftbc_recur_count matches 0 at @s run teleport @s ~0.0278 ~ ~
execute as @s[tag=ftbc_speed_bit_2] if score @s ftbc_recur_count matches 0 at @s run teleport @s ~0.0556 ~ ~
execute as @s[tag=ftbc_speed_bit_3] if score @s ftbc_recur_count matches 0 at @s run teleport @s ~0.1111 ~ ~
execute as @s[tag=ftbc_speed_bit_4] if score @s ftbc_recur_count matches 0 at @s run teleport @s ~0.2222 ~ ~
execute as @s[tag=ftbc_speed_bit_5] if score @s ftbc_recur_count matches 0 at @s run teleport @s ~0.4444 ~ ~
execute as @s[tag=ftbc_speed_bit_6] if score @s ftbc_recur_count matches 0 at @s run teleport @s ~0.8889 ~ ~
execute as @s[tag=ftbc_speed_bit_7] if score @s ftbc_recur_count matches 0 at @s run teleport @s ~1.7778 ~ ~
execute as @s[tag=ftbc_speed_bit_8] if score @s ftbc_recur_count matches 0 at @s run teleport @s ~3.5556 ~ ~
execute as @s[tag=ftbc_speed_bit_9] if score @s ftbc_recur_count matches 0 at @s run teleport @s ~7.1111 ~ ~

# Second iteration onwards: run teleportation only once, since we guarantee that ftbc_recur_tpspd should be either 0 or 72.
# For this case, we are unable to use the implementation as in "First iteration" since "~ ~ ~" can be no longer identical to "at @s"
execute if score @s ftbc_recur_tpspd matches 1.. if score @s ftbc_recur_count matches 1.. run teleport @s ~1 ~ ~

function ftmc:bcartv2/engine/fixtp/save_motion

# Update coordinate offset for next recursion iteration
execute if score @s ftbc_recur_count matches 0 run scoreboard players operation @s ftbc_recur_tpdmx += @s ftbc_recur_tpspd
execute if score @s ftbc_recur_count matches 1.. run scoreboard players add @s ftbc_recur_tpdx 1
