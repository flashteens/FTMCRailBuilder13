scoreboard players set @s ftbc_sl_delta 0
scoreboard players set @s ftbc_funcid 40

execute as @s[scores={bulletcartew=0}] at @s unless score @s ftbc_funcid = @s ftbc_funcid_old run tp @s ~-1 ~ ~

tag @s remove ftbc_is_delta_unset