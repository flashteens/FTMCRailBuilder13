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
scoreboard players set @s[type=minecart] BCartMaxSpeed 0
scoreboard players set @s[type=minecart] BCartConfigID 0

# Initialize the acceleration parameters
scoreboard players set @s[type=minecart] ftbc_accel_ntick 0
scoreboard players set @s[type=minecart] ftbc_accelperiod 1

# For v2.2+, remove the sensor initialization state from the carts.
tag @s remove ftbc_v22_has_init_speedlimit

# For v2.3.3+, Remove the 'suspended mode' from the carts.
tag @s remove ftbc_suspended_mode

# Indicates the old v2.0 engine, which is not applicable for new features on v2.1+ engine.
# This line is also called when the high-speed mode of v2.1+ is turning off.
tag @s remove ftbc_is_v21_enabled
tag @s remove ftbc_is_v22_enabled
