execute if entity @s[scores={bulletcartns=..-1}] run scoreboard players set @s bulletcartew 0
execute if entity @s[scores={bulletcartns=1..}] run scoreboard players set @s bulletcartew 0
execute if entity @s[scores={bulletcartns=0}] run function ftmc:bcartv2/engine/turn/on_vert_conflict
