#As: a minecart
#At: undefined

# initialize the max speed settings (by-cart values)
function ftmc:bcartv2/engine/maxspeed_init_by_cart

# show misc message on debug carts (derailment, stopper, BCv2 launcher events, etc.)
execute as @s[type=minecart,tag=debug,tag=ftbc_pending_for_debug_launch_msg] at @s run function ftmc:bcartv2/engine/internal/show_debug_msg_launch
execute as @s[type=minecart,tag=debug,tag=ftbc_pending_for_debug_stopper_msg] at @s run function ftmc:bcartv2/engine/internal/show_debug_msg_stoppercmd
execute as @s[type=minecart,tag=debug,tag=ftbc_pending_for_debug_derail_msg] at @s run function ftmc:bcartv2/engine/internal/show_debug_msg_derailment

# automatically turn off high-speed mode if the cart is stopped by the Stopper command from the FTMC Railway Builder Tool datapack.
execute as @s[tag=bcartv2,type=minecart,scores={ftcarttimer=1..}] at @s run function ftmc:bcartv2/control/off_and_debug

# run the main engine.
execute as @s[tag=bcartv2,tag=!ftbc_suspended_mode,type=minecart] at @s positioned ~ ~ ~ run function ftmc:bcartv2/engine/speed_sensor
execute as @s[tag=bcartv2,tag=!ftbc_suspended_mode,type=minecart] at @s positioned ~ ~ ~ run function ftmc:bcartv2/engine/turn_by_direction
execute as @s[tag=bcartv2,tag=!ftbc_suspended_mode,type=minecart] at @s positioned ~ ~ ~ run function ftmc:bcartv2/engine/speed_tween

execute as @s[tag=bcartv2,tag=!ftbc_suspended_mode,type=minecart,tag=ftbc_is_v22_enabled] at @s run function ftmc:bcartv2/engine/lowspeed

execute as @s[tag=bcartv2,tag=!ftbc_suspended_mode,type=minecart,scores={bulletcartew=1..}] at @s run function ftmc:bcartv2/engine/east
execute as @s[tag=bcartv2,tag=!ftbc_suspended_mode,type=minecart,scores={bulletcartew=..-1}] at @s run function ftmc:bcartv2/engine/west
execute as @s[tag=bcartv2,tag=!ftbc_suspended_mode,type=minecart,scores={bulletcartns=1..}] at @s run function ftmc:bcartv2/engine/south
execute as @s[tag=bcartv2,tag=!ftbc_suspended_mode,type=minecart,scores={bulletcartns=..-1}] at @s run function ftmc:bcartv2/engine/north

# automatically turn off high-speed mode if its emergency brake completes.
execute as @s[tag=bcartv2,type=minecart,tag=ftbc_emerbrake,scores={ftbcspeed=..0}] at @s positioned ~ ~ ~ run function ftmc:bcartv2/control/off

# fail-safe mechanism
execute as @s[tag=bcartv2,type=minecart] at @s positioned ~ ~ ~ run function ftmc:bcartv2/engine/failsafe
