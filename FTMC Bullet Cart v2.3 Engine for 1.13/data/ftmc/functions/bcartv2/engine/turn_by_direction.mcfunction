# Change the directions of the carts according to different rail shapes.

execute if block ~ ~ ~ #rails[shape=east_west] run function ftmc:bcartv2/engine/turn/on_hori
execute if block ~ ~ ~ #rails[shape=ascending_east] run function ftmc:bcartv2/engine/turn/on_hori
execute if block ~ ~ ~ #rails[shape=ascending_west] run function ftmc:bcartv2/engine/turn/on_hori
execute if block ~ ~ ~ #rails[shape=north_south] run function ftmc:bcartv2/engine/turn/on_vert
execute if block ~ ~ ~ #rails[shape=ascending_north] run function ftmc:bcartv2/engine/turn/on_vert
execute if block ~ ~ ~ #rails[shape=ascending_south] run function ftmc:bcartv2/engine/turn/on_vert

execute if block ~ ~ ~ #rails[shape=north_west] run function ftmc:bcartv2/engine/turn/on_north_west
execute if block ~ ~ ~ #rails[shape=north_east] run function ftmc:bcartv2/engine/turn/on_north_east
execute if block ~ ~ ~ #rails[shape=south_west] run function ftmc:bcartv2/engine/turn/on_south_west
execute if block ~ ~ ~ #rails[shape=south_east] run function ftmc:bcartv2/engine/turn/on_south_east

execute if block ~ ~ ~ #rails[shape=east_west] run tellraw flashteens ["",{"color":"aqua","text":"- EW"}]
execute if block ~ ~ ~ #rails[shape=ascending_east] run tellraw flashteens ["",{"color":"aqua","text":"- aE"}]
execute if block ~ ~ ~ #rails[shape=ascending_west] run tellraw flashteens ["",{"color":"aqua","text":"- aW"}]
execute if block ~ ~ ~ #rails[shape=north_south] run tellraw flashteens ["",{"color":"aqua","text":"- NS"}]
execute if block ~ ~ ~ #rails[shape=ascending_north] run tellraw flashteens ["",{"color":"aqua","text":"- aN"}]
execute if block ~ ~ ~ #rails[shape=ascending_south] run tellraw flashteens ["",{"color":"aqua","text":"- aS"}]

execute if block ~ ~ ~ #rails[shape=north_west] run tellraw flashteens ["",{"color":"aqua","text":"- nw"}]
execute if block ~ ~ ~ #rails[shape=north_east] run tellraw flashteens ["",{"color":"aqua","text":"- ne"}]
execute if block ~ ~ ~ #rails[shape=south_west] run tellraw flashteens ["",{"color":"aqua","text":"- sw"}]
execute if block ~ ~ ~ #rails[shape=south_east] run tellraw flashteens ["",{"color":"aqua","text":"- se"}]
