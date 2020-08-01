setblock ~ ~1 ~ detector_rail keep

execute if block ~ ~1 ~ detector_rail if block ~ ~ ~ command_block[facing=east] run setblock ~ ~1 ~ minecraft:detector_rail[shape=east_west]
execute if block ~ ~1 ~ detector_rail if block ~ ~ ~ command_block[facing=west] run setblock ~ ~1 ~ minecraft:detector_rail[shape=east_west]
execute if block ~ ~1 ~ detector_rail if block ~ ~ ~ repeating_command_block[facing=east] run setblock ~ ~1 ~ minecraft:detector_rail[shape=east_west]
execute if block ~ ~1 ~ detector_rail if block ~ ~ ~ repeating_command_block[facing=west] run setblock ~ ~1 ~ minecraft:detector_rail[shape=east_west]

execute if block ~ ~1 ~ detector_rail if block ~ ~ ~ command_block[facing=south] run setblock ~ ~1 ~ minecraft:detector_rail[shape=north_south]
execute if block ~ ~1 ~ detector_rail if block ~ ~ ~ command_block[facing=north] run setblock ~ ~1 ~ minecraft:detector_rail[shape=north_south]
execute if block ~ ~1 ~ detector_rail if block ~ ~ ~ repeating_command_block[facing=south] run setblock ~ ~1 ~ minecraft:detector_rail[shape=north_south]
execute if block ~ ~1 ~ detector_rail if block ~ ~ ~ repeating_command_block[facing=north] run setblock ~ ~1 ~ minecraft:detector_rail[shape=north_south]
