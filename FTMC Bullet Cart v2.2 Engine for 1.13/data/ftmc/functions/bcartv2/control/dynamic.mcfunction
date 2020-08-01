execute store result score @s ftbc_reg_0 run data get entity @s Motion[0] 100
execute store result score @s ftbc_reg_2 run data get entity @s Motion[2] 100

execute as @s[scores={ftbc_reg_0=20..}] at @s positioned ~ ~ ~ run function ftmc:bcartv2/control/east
execute as @s[scores={ftbc_reg_2=..-20}] at @s positioned ~ ~ ~ run function ftmc:bcartv2/control/north
execute as @s[scores={ftbc_reg_0=..-20}] at @s positioned ~ ~ ~ run function ftmc:bcartv2/control/west
execute as @s[scores={ftbc_reg_2=20..}] at @s positioned ~ ~ ~ run function ftmc:bcartv2/control/south
