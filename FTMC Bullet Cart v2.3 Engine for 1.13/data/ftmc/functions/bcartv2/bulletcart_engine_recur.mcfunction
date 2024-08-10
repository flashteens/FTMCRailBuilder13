#As: a minecart
#At: position of the minecart, applied with an XYZ offset for recursion operations

# Initialize the offset to be teleported for this iteration
# First run:           ftbc_recur_tpspd  :=  ftbc_recur_itspd (mod 72);  if result is 0 then set to min(ftbc_recur_itspd, 72)
# Second run onwards:  ftbc_recur_tpspd  :=  min(ftbc_recur_itspd, 72)
# We use special value for first run due to technical limitations on the /tp command.
# See also: function ftmc:bcartv2/engine/(east|west|south|north)
scoreboard players operation @s[tag=bcartv2] ftbc_recur_tpspd = @s ftbc_recur_itspd
scoreboard players set @s ftbc_reg_const 72
execute if score @s[tag=bcartv2] ftbc_recur_tpspd matches 1.. run scoreboard players operation @s[tag=bcartv2] ftbc_recur_tpspd %= @s ftbc_reg_const
execute if score @s[tag=bcartv2] ftbc_recur_tpspd matches 0 run scoreboard players operation @s[tag=bcartv2] ftbc_recur_tpspd = @s ftbc_reg_const
scoreboard players operation @s[tag=bcartv2] ftbc_recur_tpspd < @s[tag=bcartv2] ftbc_recur_itspd
scoreboard players reset @s ftbc_reg_const

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

# Run the next iteration if necessary
#execute at @s[tag=bcartv2] run tellraw flashteens ["",{"text":"TestValue = "},{"score":{"name":"@e[type=minecart,sort=nearest,limit=1]","objective":"ftbc_recur_itspd"},"bold":true,"color":"gold"},{"text":" km/h"}," ",{"text":"(Actual: "},{"score":{"name":"@e[type=minecart,sort=nearest,limit=1]","objective":"ftbcspeed"},"bold":true,"color":"green"},{"text":" km/h, TPed: "},{"score":{"name":"@e[type=minecart,sort=nearest,limit=1]","objective":"ftbc_recur_tpspd"},"bold":true,"color":"aqua"},{"text":" km/h)"}]
execute at @s[tag=bcartv2] run tellraw flashteens ["",{"text":"(X="},{"score":{"name":"@e[type=minecart,sort=nearest,limit=1]","objective":"ftbc_recur_tpdx"},"bold":true,"color":"red"},{"text":" Y="},{"score":{"name":"@e[type=minecart,sort=nearest,limit=1]","objective":"ftbc_recur_tpdy"},"bold":true,"color":"red"},{"text":" Z="},{"score":{"name":"@e[type=minecart,sort=nearest,limit=1]","objective":"ftbc_recur_tpdz"},"bold":true,"color":"red"},{"text":" mX="},{"score":{"name":"@e[type=minecart,sort=nearest,limit=1]","objective":"ftbc_recur_tpdmx"},"bold":true,"color":"light_purple"},{"text":" mZ="},{"score":{"name":"@e[type=minecart,sort=nearest,limit=1]","objective":"ftbc_recur_tpdmz"},"bold":true,"color":"light_purple"},{"text":")"}]
scoreboard players set @s[tag=bcartv2] ftbc_recur_state 1
scoreboard players add @s[tag=bcartv2] ftbc_recur_count 1
function ftmc:bcartv2/bulletcart_engine_recur_next
