execute if entity @s[scores={bulletcartew=..-1,bulletcartns=0}] run scoreboard players set @s bulletcartns -1
execute if entity @s[scores={bulletcartew=0,bulletcartns=1..}] run scoreboard players set @s bulletcartew 1

execute if entity @s[scores={bulletcartew=..-1,bulletcartns=..-1}] unless block ~ ~ ~-1 rail[shape=south_west] run scoreboard players set @s bulletcartew 0
execute if entity @s[scores={bulletcartew=1..,bulletcartns=1..}] unless block ~1 ~ ~ rail[shape=south_west] run scoreboard players set @s bulletcartns 0
