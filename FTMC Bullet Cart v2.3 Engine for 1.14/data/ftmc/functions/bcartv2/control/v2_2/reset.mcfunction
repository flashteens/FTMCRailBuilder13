tag @s[type=minecart] add bcartv2
tag @s[type=minecart] remove ftbc_emerbrake
scoreboard players set @s[type=minecart] bulletcartew 0
scoreboard players set @s[type=minecart] bulletcartns 0
# scoreboard players set @s[type=minecart] ftbcspeed 0
scoreboard players set @s[type=minecart] ftbctargetspeed -29
scoreboard players set @s[type=minecart] ftbc_sl_delta 0
scoreboard players set @s[type=minecart] ftbc_sl_deltaold 0
scoreboard players set @s[type=minecart] ftbc_funcid 0
scoreboard players set @s[type=minecart] ftbc_funcid_old 0
scoreboard players set @s[type=minecart] BCartConfigID 0

execute if entity @s[type=minecart] run function ftmc:bcartv2/control/v2_2/load_motion

# Initialize the acceleration parameters
scoreboard players set @s[type=minecart] ftbc_accel_ntick 0
scoreboard players set @s[type=minecart] ftbc_accelperiod 1

# Before the first sensor is triggered by the cart, its speed won't be reduced.
tag @s remove ftbc_v22_has_init_speedlimit

# Indicates the new v2.2 engine, which contains new features not existing in the old v2.1 engine.
tag @s add ftbc_is_v21_enabled
tag @s add ftbc_is_v22_enabled
