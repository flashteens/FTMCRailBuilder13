execute if block ~ ~ ~ repeating_command_block[facing=east] run execute as @e[type=minecart,distance=..2] run data merge entity @s {Motion:[1d,0d,0d]}
execute if block ~ ~ ~ repeating_command_block[facing=west] run execute as @e[type=minecart,distance=..2] run data merge entity @s {Motion:[-1d,0d,0d]}
execute if block ~ ~ ~ repeating_command_block[facing=south] run execute as @e[type=minecart,distance=..2] run data merge entity @s {Motion:[0d,0d,1d]}
execute if block ~ ~ ~ repeating_command_block[facing=north] run execute as @e[type=minecart,distance=..2] run data merge entity @s {Motion:[0d,0d,-1d]}
