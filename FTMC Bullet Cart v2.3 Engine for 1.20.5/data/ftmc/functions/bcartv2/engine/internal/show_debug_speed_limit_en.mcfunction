# This is an inner function, called by function ftmc:bcartv2/engine/internal/adjust only.
# Do not try to call this function elsewhere.

execute if entity @s[tag=!ftbc_is_v22_enabled] run function ftmc:bcartv2/engine/internal/show_debug_speed_limit_en_v21
execute if entity @s[tag=ftbc_is_v22_enabled] run function ftmc:bcartv2/engine/internal/show_debug_speed_limit_en_v22
