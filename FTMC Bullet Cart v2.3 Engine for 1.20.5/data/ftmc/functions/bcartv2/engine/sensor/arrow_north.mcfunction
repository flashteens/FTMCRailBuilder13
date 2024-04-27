scoreboard players set @s ftbc_sl_delta 0
scoreboard players set @s ftbc_funcid 40

function ftmc:bcartv2/engine/fixtp/load_motion
execute as @s[scores={bulletcartns=0}] at @s unless score @s ftbc_funcid = @s ftbc_funcid_old run tp @s ~ ~ ~-1
function ftmc:bcartv2/engine/fixtp/save_motion

tag @s remove ftbc_is_delta_unset