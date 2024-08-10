function ftmc:bcartv2/engine/fixtp/load_motion


tag @s add ftbc_failsafe_lock

# Normal state: when one of Y=~-1, Y=~, Y=~1 is a rail block.

execute if block ~ ~ ~ #rails run tag @s remove ftbc_failsafe_lock

execute if block ~ ~1 ~ #rails if entity @s[tag=ftbc_failsafe_lock] run scoreboard players add @s ftbc_recur_tpdy 1
execute if block ~ ~1 ~ #rails if entity @s[tag=ftbc_failsafe_lock] run tp @s ~ ~1 ~
execute if block ~ ~1 ~ #rails run tag @s remove ftbc_failsafe_lock

execute if block ~ ~-1 ~ #rails if entity @s[tag=ftbc_failsafe_lock] run scoreboard players remove @s ftbc_recur_tpdy 1
execute if block ~ ~-1 ~ #rails if entity @s[tag=ftbc_failsafe_lock] run tp @s ~ ~-1 ~
execute if block ~ ~-1 ~ #rails run tag @s remove ftbc_failsafe_lock


# Teleport the minecart back to the rail according to the "magenta glazed terracotta" arrow indication.
execute if entity @s[tag=ftbc_failsafe_lock] positioned ~ ~ ~ run function ftmc:bcartv2/engine/failsafe_arrowtp
execute if entity @s[tag=ftbc_failsafe_lock] positioned ~ ~1 ~ run function ftmc:bcartv2/engine/failsafe_arrowtp
execute if entity @s[tag=ftbc_failsafe_lock] positioned ~ ~-1 ~ run function ftmc:bcartv2/engine/failsafe_arrowtp


# Suspending state: when it's not normal state, and Y=~ is not air (including unknown cases.)
execute if entity @s[tag=ftbc_failsafe_lock] run tag @s add ftbc_suspended_mode
execute if entity @s[tag=!ftbc_failsafe_lock] run tag @s remove ftbc_suspended_mode

# Derailment state: when it's not normal state, and Y=~ is air.
execute if block ~ ~ ~ air run tag @s remove ftbc_suspended_mode
execute if block ~ ~ ~ cave_air run tag @s remove ftbc_suspended_mode
execute if block ~ ~ ~ void_air run tag @s remove ftbc_suspended_mode


execute if entity @s[tag=ftbc_failsafe_lock,tag=!ftbc_suspended_mode] run function ftmc:bcartv2/control/off
execute if entity @s[tag=debug,tag=ftbc_failsafe_lock,tag=!ftbc_suspended_mode] run tag @s add ftbc_pending_for_debug_derail_msg

tag @s remove ftbc_failsafe_lock


function ftmc:bcartv2/engine/fixtp/save_motion
