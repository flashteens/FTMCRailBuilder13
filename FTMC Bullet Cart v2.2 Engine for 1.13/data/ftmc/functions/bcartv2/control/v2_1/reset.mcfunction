tag @s[type=minecart] add bcartv2
tag @s[type=minecart] remove ftbc_emerbrake
scoreboard players set @s[type=minecart] bulletcartew 0
scoreboard players set @s[type=minecart] bulletcartns 0
scoreboard players set @s[type=minecart] ftbcspeed 0
scoreboard players set @s[type=minecart] ftbctargetspeed -29
scoreboard players set @s[type=minecart] ftbc_sl_delta 0
scoreboard players set @s[type=minecart] ftbc_sl_deltaold 0
scoreboard players set @s[type=minecart] ftbc_funcid 0
scoreboard players set @s[type=minecart] ftbc_funcid_old 0
scoreboard players set @s[type=minecart] BCartConfigID 0

# Initialize the acceleration parameters
scoreboard players set @s[type=minecart] ftbc_accel_ntick 0
scoreboard players set @s[type=minecart] ftbc_accelperiod 1

# Indicates the new v2.1 engine, which contains new features not existing in the old v2.0 engine.
tag @s add ftbc_is_v21_enabled
