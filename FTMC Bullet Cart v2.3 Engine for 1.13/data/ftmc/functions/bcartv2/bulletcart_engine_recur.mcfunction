#As: a minecart
#At: position of the minecart, applied with an XYZ offset for recursion operations


# show misc message on debug carts (derailment, stopper, BCv2 launcher events, etc.)
execute if entity @s[type=minecart,tag=debug,tag=ftbc_pending_for_debug_launch_msg] run function ftmc:bcartv2/engine/internal/show_debug_msg_launch
execute if entity @s[type=minecart,tag=debug,tag=ftbc_pending_for_debug_stopper_msg] run function ftmc:bcartv2/engine/internal/show_debug_msg_stoppercmd
execute if entity @s[type=minecart,tag=debug,tag=ftbc_pending_for_debug_derail_msg] run function ftmc:bcartv2/engine/internal/show_debug_msg_derailment

# automatically turn off high-speed mode if the cart is stopped by the Stopper command from the FTMC Railway Builder Tool datapack.
execute if entity @s[tag=bcartv2,type=minecart,scores={ftcarttimer=1..}] run function ftmc:bcartv2/control/off_and_debug

# run the main engine.
execute if entity @s[tag=bcartv2,tag=!ftbc_suspended_mode,type=minecart] run function ftmc:bcartv2/engine/speed_sensor
execute if entity @s[tag=bcartv2,tag=!ftbc_suspended_mode,type=minecart] run function ftmc:bcartv2/engine/turn_by_direction
execute if entity @s[tag=bcartv2,tag=!ftbc_suspended_mode,type=minecart] run function ftmc:bcartv2/engine/speed_tween

execute if entity @s[tag=bcartv2,tag=!ftbc_suspended_mode,type=minecart,tag=ftbc_is_v22_enabled] run function ftmc:bcartv2/engine/lowspeed

execute if entity @s[tag=bcartv2,tag=!ftbc_suspended_mode,type=minecart,scores={bulletcartew=1..}] run function ftmc:bcartv2/engine/east
execute if entity @s[tag=bcartv2,tag=!ftbc_suspended_mode,type=minecart,scores={bulletcartew=..-1}] run function ftmc:bcartv2/engine/west
execute if entity @s[tag=bcartv2,tag=!ftbc_suspended_mode,type=minecart,scores={bulletcartns=1..}] run function ftmc:bcartv2/engine/south
execute if entity @s[tag=bcartv2,tag=!ftbc_suspended_mode,type=minecart,scores={bulletcartns=..-1}] run function ftmc:bcartv2/engine/north

# automatically turn off high-speed mode if its emergency brake completes.
execute if entity @s[tag=bcartv2,type=minecart,tag=ftbc_emerbrake,scores={ftbcspeed=..0}] run function ftmc:bcartv2/control/off

# fail-safe mechanism
execute if entity @s[tag=bcartv2,type=minecart] run function ftmc:bcartv2/engine/failsafe
