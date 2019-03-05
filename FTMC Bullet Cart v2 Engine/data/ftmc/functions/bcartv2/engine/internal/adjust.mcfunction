# This is an inner function, called by function ftmc:bcartv2/engine/speed_sensor only.
# Do not try to call this function elsewhere.


# Adjust the speed limit.
scoreboard players operation @s ftbctargetspeed += @s ftbc_sl_delta

# Display speed limit changes (simple info) on the action bar.
execute as @s[tag=show_speed_limit,tag=!debug] run function ftmc:bcartv2/engine/internal/show_speed_limit

# Display advanced info for speed limit changes (including the expected distance to target speed).
execute as @s[tag=show_speed_limit,tag=debug] run function ftmc:bcartv2/engine/internal/show_debug_speed_limit