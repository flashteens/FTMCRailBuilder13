execute as @e[tag=bcartv2,type=minecart,tag=!ftbc_emerbrake] at @s positioned ~ ~ ~ run function ftmc:bcartv2/engine/speed_sensor
execute as @e[tag=bcartv2,type=minecart] at @s positioned ~ ~ ~ run function ftmc:bcartv2/engine/speed_tween

execute as @e[tag=bcartv2,type=minecart,scores={bulletcartew=1..}] at @s run function ftmc:bcartv2/engine/east
execute as @e[tag=bcartv2,type=minecart,scores={bulletcartew=..-1}] at @s run function ftmc:bcartv2/engine/west
execute as @e[tag=bcartv2,type=minecart,scores={bulletcartns=1..}] at @s run function ftmc:bcartv2/engine/south
execute as @e[tag=bcartv2,type=minecart,scores={bulletcartns=..-1}] at @s run function ftmc:bcartv2/engine/north

# automatically turn off high-speed mode if its emergency brake completes.
execute as @e[tag=bcartv2,type=minecart,tag=ftbc_emerbrake,scores={ftbcspeed=..0}] at @s positioned ~ ~ ~ run function ftmc:bcartv2/control/off

# fail-safe mechanism
execute as @e[tag=bcartv2,type=minecart] at @s positioned ~ ~ ~ unless block ~ ~ ~ #rails run function ftmc:bcartv2/control/off
