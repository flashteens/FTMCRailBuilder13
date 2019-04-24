execute if block ~ ~ ~ command_block[facing=east] run setblock ~ ~ ~ magenta_glazed_terracotta[facing=east]
execute if block ~ ~ ~ command_block[facing=west] run setblock ~ ~ ~ magenta_glazed_terracotta[facing=west]
execute if block ~ ~ ~ command_block[facing=south] run setblock ~ ~ ~ magenta_glazed_terracotta[facing=south]
execute if block ~ ~ ~ command_block[facing=north] run setblock ~ ~ ~ magenta_glazed_terracotta[facing=north]
execute if block ~ ~ ~ command_block run setblock ~ ~ ~ white_concrete

playsound minecraft:block.redstone_torch.burnout block @a ~ ~ ~ 1 2

execute if block ~ ~ ~ magenta_glazed_terracotta[facing=east] run function ftmc:subwaybuilder/wild_stopper_long/put_east
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=west] run function ftmc:subwaybuilder/wild_stopper_long/put_west
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=south] run function ftmc:subwaybuilder/wild_stopper_long/put_south
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=north] run function ftmc:subwaybuilder/wild_stopper_long/put_north

execute if block ~ ~ ~ white_concrete if entity @p[y_rotation=45..135] run function ftmc:subwaybuilder/wild_stopper_long/put_east
execute if block ~ ~ ~ white_concrete if entity @p[y_rotation=-135..-45] run function ftmc:subwaybuilder/wild_stopper_long/put_west
execute if block ~ ~ ~ white_concrete if entity @p[y_rotation=135..179.999] run function ftmc:subwaybuilder/wild_stopper_long/put_south
execute if block ~ ~ ~ white_concrete if entity @p[y_rotation=-180..-135] run function ftmc:subwaybuilder/wild_stopper_long/put_south
execute if block ~ ~ ~ white_concrete if entity @p[y_rotation=-45..45] run function ftmc:subwaybuilder/wild_stopper_long/put_north

function ftmc:subwaybuilder/wild_put_aboverail