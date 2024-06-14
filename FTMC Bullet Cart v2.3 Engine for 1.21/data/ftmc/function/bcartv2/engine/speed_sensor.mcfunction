# Change ftbctargetspeed according to different blocks beneath the rails.

tag @s add ftbc_is_delta_unset

execute if entity @s[tag=!ftbc_is_v21_enabled] run function ftmc:bcartv2/config/sensors_v20
execute if entity @s[tag=ftbc_is_v21_enabled,scores={BCartConfigID=0}] run function ftmc:bcartv2/config/sensors_v21
execute if entity @s[tag=ftbc_is_v21_enabled,scores={BCartConfigID=1..}] run function ftmc:bcartv2/config/sensors_v21_custom

# All other blocks - Speed Limit: unchanged
execute if entity @s[tag=ftbc_is_delta_unset] run function ftmc:bcartv2/engine/sensor/unchanged


# If ftbc_funcid is changed, then modify the speed limit (or do some other operations).
execute as @s at @s positioned ~ ~ ~ unless score @s ftbc_funcid = @s ftbc_funcid_old run function ftmc:bcartv2/engine/internal/adjust

# When the speed limit is "zero", ftbctargetspeed is actually stored as -29; therefore avoid any speed limit values below -29.
scoreboard players set @s[scores={ftbctargetspeed=..-30}] ftbctargetspeed -29

# Sync old values of speed limit delta and function ID state with the new values.
scoreboard players operation @s ftbc_sl_deltaold = @s ftbc_sl_delta
scoreboard players operation @s ftbc_funcid_old = @s ftbc_funcid