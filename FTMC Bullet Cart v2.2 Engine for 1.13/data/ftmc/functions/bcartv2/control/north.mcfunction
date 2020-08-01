execute as @s[type=minecart] at @s positioned ~ ~ ~ run function ftmc:bcartv2/control/reset
scoreboard players set @s[tag=bcartv2,type=minecart] bulletcartew 0
scoreboard players set @s[tag=bcartv2,type=minecart] bulletcartns -1
