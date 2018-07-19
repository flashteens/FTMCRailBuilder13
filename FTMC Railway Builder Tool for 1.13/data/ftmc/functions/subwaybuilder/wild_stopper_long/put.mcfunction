setblock ~ ~ ~ minecraft:white_concrete
playsound minecraft:block.redstone_torch.burnout block @a ~ ~ ~ 1 2
execute if entity @p[y_rotation=45..135] run function ftmc:subwaybuilder/wild_stopper_long/put_east
execute if entity @p[y_rotation=-135..-45] run function ftmc:subwaybuilder/wild_stopper_long/put_west
execute if entity @p[y_rotation=135..179.999] run function ftmc:subwaybuilder/wild_stopper_long/put_south
execute if entity @p[y_rotation=-180..-135] run function ftmc:subwaybuilder/wild_stopper_long/put_south
execute if entity @p[y_rotation=-45..45] run function ftmc:subwaybuilder/wild_stopper_long/put_north
function ftmc:subwaybuilder/wild_put_aboverail