execute if block ~ ~ ~ command_block[facing=east] run setblock ~ ~ ~ magenta_glazed_terracotta[facing=east]
execute if block ~ ~ ~ command_block[facing=west] run setblock ~ ~ ~ magenta_glazed_terracotta[facing=west]
execute if block ~ ~ ~ command_block[facing=south] run setblock ~ ~ ~ magenta_glazed_terracotta[facing=south]
execute if block ~ ~ ~ command_block[facing=north] run setblock ~ ~ ~ magenta_glazed_terracotta[facing=north]
execute if block ~ ~ ~ command_block run setblock ~ ~ ~ white_concrete

playsound minecraft:block.redstone_torch.burnout block @a ~ ~ ~ 1 2

execute if block ~ ~ ~ magenta_glazed_terracotta[facing=east] run function ftmc:bcartv2/builder/wild_startcb/v2_1/turbo/put_east
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=west] run function ftmc:bcartv2/builder/wild_startcb/v2_1/turbo/put_west
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=south] run function ftmc:bcartv2/builder/wild_startcb/v2_1/turbo/put_south
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=north] run function ftmc:bcartv2/builder/wild_startcb/v2_1/turbo/put_north
execute if block ~ ~ ~ white_concrete run function ftmc:bcartv2/builder/wild_startcb/v2_1/turbo/put_dynamic

function ftmc:bcartv2/builder/wild_put_aboverail