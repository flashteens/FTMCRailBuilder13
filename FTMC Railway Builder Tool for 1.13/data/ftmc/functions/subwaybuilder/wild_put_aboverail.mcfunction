execute if entity @p[y_rotation=45..135] run setblock ~ ~1 ~ minecraft:detector_rail[shape=east_west] keep
execute if entity @p[y_rotation=-135..-45] run setblock ~ ~1 ~ minecraft:detector_rail[shape=east_west] keep
execute if entity @p[y_rotation=135..179.999] run setblock ~ ~1 ~ minecraft:detector_rail[shape=north_south] keep
execute if entity @p[y_rotation=-180..-135] run setblock ~ ~1 ~ minecraft:detector_rail[shape=north_south] keep
execute if entity @p[y_rotation=-45..45] run setblock ~ ~1 ~ minecraft:detector_rail[shape=north_south] keep
