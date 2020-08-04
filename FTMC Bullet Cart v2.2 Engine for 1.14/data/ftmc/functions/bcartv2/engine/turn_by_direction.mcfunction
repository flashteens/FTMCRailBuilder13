# Change the directions of the carts according to different rail shapes.

execute if block ~ ~ ~ rail[shape=east_west] run function ftmc:bcartv2/engine/turn/on_hori
execute if block ~ ~ ~ rail[shape=ascending_east] run function ftmc:bcartv2/engine/turn/on_hori
execute if block ~ ~ ~ rail[shape=ascending_west] run function ftmc:bcartv2/engine/turn/on_hori
execute if block ~ ~ ~ rail[shape=north_south] run function ftmc:bcartv2/engine/turn/on_vert
execute if block ~ ~ ~ rail[shape=ascending_north] run function ftmc:bcartv2/engine/turn/on_vert
execute if block ~ ~ ~ rail[shape=ascending_south] run function ftmc:bcartv2/engine/turn/on_vert

execute if block ~ ~ ~ rail[shape=north_west] run function ftmc:bcartv2/engine/turn/on_north_west
execute if block ~ ~ ~ rail[shape=north_east] run function ftmc:bcartv2/engine/turn/on_north_east
execute if block ~ ~ ~ rail[shape=south_west] run function ftmc:bcartv2/engine/turn/on_south_west
execute if block ~ ~ ~ rail[shape=south_east] run function ftmc:bcartv2/engine/turn/on_south_east
