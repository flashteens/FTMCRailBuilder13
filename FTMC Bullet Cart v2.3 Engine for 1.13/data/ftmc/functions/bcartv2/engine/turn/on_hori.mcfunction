execute if entity @s[scores={bulletcartew=..-1}] run scoreboard players set @s bulletcartns 0
execute if entity @s[scores={bulletcartew=1..}] run scoreboard players set @s bulletcartns 0
execute if entity @s[scores={bulletcartew=0}] run function ftmc:bcartv2/engine/turn/on_hori_conflict
