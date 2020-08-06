execute as @s[type=minecart] at @s positioned ~ ~ ~ run function ftmc:bcartv2/control/v2_2/reset
scoreboard players set @s[tag=bcartv2,type=minecart] bulletcartew -1
scoreboard players set @s[tag=bcartv2,type=minecart] bulletcartns 0

tag @s[tag=debug] add ftbc_pending_for_debug_launch_msg
