execute as @e[type=minecart,limit=1,distance=..2] store result score @s ftrb_reg_x run data get entity @s Motion[0] 100
execute as @e[type=minecart,limit=1,distance=..2] store result score @s ftrb_reg_z run data get entity @s Motion[2] 100

execute if entity @e[type=minecart,limit=1,distance=..2,scores={ftrb_reg_x=5..}] run function ftmc:subwayengine/subwayauto/stop_east_long
execute if entity @e[type=minecart,limit=1,distance=..2,scores={ftrb_reg_z=..-5}] run function ftmc:subwayengine/subwayauto/stop_north_long
execute if entity @e[type=minecart,limit=1,distance=..2,scores={ftrb_reg_x=..-5}] run function ftmc:subwayengine/subwayauto/stop_west_long
execute if entity @e[type=minecart,limit=1,distance=..2,scores={ftrb_reg_z=5..}] run function ftmc:subwayengine/subwayauto/stop_south_long
