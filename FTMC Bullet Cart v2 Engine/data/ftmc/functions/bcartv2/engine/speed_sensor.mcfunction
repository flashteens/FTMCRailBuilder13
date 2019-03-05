# Change ftbctargetspeed according to different blocks beneath the rails.

tag @s add ftbc_is_delta_unset

execute if block ~ ~-1 ~ green_concrete run function ftmc:bcartv2/engine/sensor/add50
execute if block ~ ~-1 ~ lime_concrete run function ftmc:bcartv2/engine/sensor/add10
execute if block ~ ~-1 ~ yellow_concrete run function ftmc:bcartv2/engine/sensor/sub10
execute if block ~ ~-1 ~ orange_concrete run function ftmc:bcartv2/engine/sensor/sub50

execute if block ~ ~-1 ~ green_concrete_powder run function ftmc:bcartv2/engine/sensor/add25
execute if block ~ ~-1 ~ lime_concrete_powder run function ftmc:bcartv2/engine/sensor/add5
execute if block ~ ~-1 ~ yellow_concrete_powder run function ftmc:bcartv2/engine/sensor/sub5
execute if block ~ ~-1 ~ orange_concrete_powder run function ftmc:bcartv2/engine/sensor/sub25

execute if block ~ ~-1 ~ red_concrete run function ftmc:bcartv2/engine/sensor/emerbrake
execute if block ~ ~-1 ~ red_concrete_powder run function ftmc:bcartv2/engine/sensor/emerbrake

# All other blocks - Speed Limit: unchanged
execute if entity @s[tag=ftbc_is_delta_unset] run function ftmc:bcartv2/engine/sensor/unchanged


# If ftbc_sl_delta is changed, then modify the speed limit.
execute as @s at @s positioned ~ ~ ~ unless score @s ftbc_sl_delta = @s ftbc_sl_deltaold run function ftmc:bcartv2/engine/internal/adjust

# When the speed limit is "zero", ftbctargetspeed is actually stored as -29; therefore avoid any speed limit values below -29.
scoreboard players set @s[scores={ftbctargetspeed=..-30}] ftbctargetspeed -29

# Sync old value of speed limit delta with the new value.
scoreboard players operation @s ftbc_sl_deltaold = @s ftbc_sl_delta