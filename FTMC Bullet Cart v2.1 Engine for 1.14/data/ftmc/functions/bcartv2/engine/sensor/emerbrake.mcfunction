# Note that ftbc_sl_deltaold is set here to force running ftmc:bcartv2/engine/internal/adjust in the loop function.
scoreboard players set @s ftbc_sl_delta 0
scoreboard players set @s ftbc_sl_deltaold 1
scoreboard players set @s ftbctargetspeed -29
scoreboard players set @s ftbc_funcid 29
tag @s remove ftbc_is_delta_unset
tag @s add ftbc_emerbrake