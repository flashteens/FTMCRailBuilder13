tag @s add ftbc_failsafe_lock

execute if block ~ ~ ~ #rails run tag @s remove ftbc_failsafe_lock

execute if block ~ ~1 ~ #rails if entity @s[tag=ftbc_failsafe_lock] run tp @s ~ ~1 ~
execute if block ~ ~1 ~ #rails run tag @s remove ftbc_failsafe_lock

execute if block ~ ~-1 ~ #rails if entity @s[tag=ftbc_failsafe_lock] run tp @s ~ ~-1 ~
execute if block ~ ~-1 ~ #rails run tag @s remove ftbc_failsafe_lock

execute if entity @s[tag=ftbc_failsafe_lock] run function ftmc:bcartv2/control/off
execute if entity @s[tag=debug,tag=ftbc_failsafe_lock] run tag @s add ftbc_pending_for_debug_derail_msg

tag @s remove ftbc_failsafe_lock
