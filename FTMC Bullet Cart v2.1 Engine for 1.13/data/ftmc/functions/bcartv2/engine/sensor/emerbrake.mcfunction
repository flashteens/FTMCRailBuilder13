# Note that ftbc_sl_deltaold is set here to force running ftmc:bcartv2/engine/internal/adjust in the loop function.
scoreboard players set @s ftbc_sl_delta 0
scoreboard players set @s ftbc_sl_deltaold 1

scoreboard players set @s[tag=!ftbc_is_v22_enabled] ftbctargetspeed -29
scoreboard players set @s[tag=ftbc_is_v22_enabled] ftbctargetspeed 0

scoreboard players set @s ftbc_funcid 29
tag @s add ftbc_v22_has_init_speedlimit
tag @s remove ftbc_is_delta_unset
tag @s add ftbc_emerbrake