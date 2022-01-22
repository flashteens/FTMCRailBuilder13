#As: A BulletCart with score bulletcartew=0
# This is an internal function.

execute store result score @s ftbc_reg_0 run data get entity @s Motion[0] 10000

execute unless entity @s[scores={ftbc_reg_0=0}] run scoreboard players set @s bulletcartns 0

execute if entity @s[scores={ftbc_reg_0=..-1}] run scoreboard players set @s bulletcartew -1
execute if entity @s[scores={ftbc_reg_0=1..}] run scoreboard players set @s bulletcartew 1
