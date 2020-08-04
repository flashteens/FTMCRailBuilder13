# show derailment message on debug carts (which are no longer in high-speed mode already)
execute as @e[type=minecart,tag=debug,tag=ftbc_pending_for_debug_derail_msg] at @s run function ftmc:bcartv2/engine/internal/show_debug_msg_derailment

# run the main engine.
execute as @e[tag=bcartv2,type=minecart] at @s positioned ~ ~ ~ run function ftmc:bcartv2/engine/speed_sensor
execute as @e[tag=bcartv2,type=minecart] at @s positioned ~ ~ ~ run function ftmc:bcartv2/engine/turn_by_direction
execute as @e[tag=bcartv2,type=minecart] at @s positioned ~ ~ ~ run function ftmc:bcartv2/engine/speed_tween

execute as @e[tag=bcartv2,type=minecart,tag=ftbc_is_v22_enabled] at @s run function ftmc:bcartv2/engine/lowspeed

execute as @e[tag=bcartv2,type=minecart,scores={bulletcartew=1..}] at @s run function ftmc:bcartv2/engine/east
execute as @e[tag=bcartv2,type=minecart,scores={bulletcartew=..-1}] at @s run function ftmc:bcartv2/engine/west
execute as @e[tag=bcartv2,type=minecart,scores={bulletcartns=1..}] at @s run function ftmc:bcartv2/engine/south
execute as @e[tag=bcartv2,type=minecart,scores={bulletcartns=..-1}] at @s run function ftmc:bcartv2/engine/north

# automatically turn off high-speed mode if its emergency brake completes.
execute as @e[tag=bcartv2,type=minecart,tag=ftbc_emerbrake,scores={ftbcspeed=..0}] at @s positioned ~ ~ ~ run function ftmc:bcartv2/control/off

# automatically turn off high-speed mode if the cart is stopped by the Stopper command from the FTMC Railway Builder Tool datapack.
execute as @e[tag=bcartv2,type=minecart,scores={ftcarttimer=1..}] at @s run function ftmc:bcartv2/control/off

# fail-safe mechanism
execute as @e[tag=bcartv2,type=minecart] at @s positioned ~ ~ ~ run function ftmc:bcartv2/engine/failsafe
