# Gradually increase or decrease the current speed of each minecart, according to its acceleration setting and target speed value.
# (for v2.2 carts: unless ftbc_v22_has_init_speedlimit is not enabled)
execute unless entity @s[tag=ftbc_is_v22_enabled,tag=!ftbc_v22_has_init_speedlimit] run function ftmc:bcartv2/engine/speed_tween_accel

# Perform speed value bit operation for variable tp distances.
# use the following 3 scoreboard values:
# ftbc_reg_div, ftbc_reg_mod, ftbc_reg_const

# The tags ftbc_speed_bit_0 (LSB) - ftbc_speed_bit_9 (MSB) will be used by engine functions for teleportation.
# Result = BinaryPattern of MAX(ftbcspeed, 0)
# Note that ftbcspeed is allowed to be negative since v2.2, but for such cases the binary pattern should still be zero.

# ftbc_reg_div := ftbcspeed
scoreboard players operation @s ftbc_reg_div = @s ftbcspeed

# ftbc_reg_div := max(ftbc_reg_div, 0)
scoreboard players set @s ftbc_reg_const 0
scoreboard players operation @s ftbc_reg_div > @s ftbc_reg_const


# Begin conversion to bit pattern

scoreboard players set @s ftbc_reg_const 2

scoreboard players operation @s ftbc_reg_mod = @s ftbc_reg_div
scoreboard players operation @s ftbc_reg_mod %= @s ftbc_reg_const
tag @s remove ftbc_speed_bit_0
tag @s[scores={ftbc_reg_mod=1}] add ftbc_speed_bit_0
scoreboard players operation @s ftbc_reg_div /= @s ftbc_reg_const

scoreboard players operation @s ftbc_reg_mod = @s ftbc_reg_div
scoreboard players operation @s ftbc_reg_mod %= @s ftbc_reg_const
tag @s remove ftbc_speed_bit_1
tag @s[scores={ftbc_reg_mod=1}] add ftbc_speed_bit_1
scoreboard players operation @s ftbc_reg_div /= @s ftbc_reg_const

scoreboard players operation @s ftbc_reg_mod = @s ftbc_reg_div
scoreboard players operation @s ftbc_reg_mod %= @s ftbc_reg_const
tag @s remove ftbc_speed_bit_2
tag @s[scores={ftbc_reg_mod=1}] add ftbc_speed_bit_2
scoreboard players operation @s ftbc_reg_div /= @s ftbc_reg_const

scoreboard players operation @s ftbc_reg_mod = @s ftbc_reg_div
scoreboard players operation @s ftbc_reg_mod %= @s ftbc_reg_const
tag @s remove ftbc_speed_bit_3
tag @s[scores={ftbc_reg_mod=1}] add ftbc_speed_bit_3
scoreboard players operation @s ftbc_reg_div /= @s ftbc_reg_const

scoreboard players operation @s ftbc_reg_mod = @s ftbc_reg_div
scoreboard players operation @s ftbc_reg_mod %= @s ftbc_reg_const
tag @s remove ftbc_speed_bit_4
tag @s[scores={ftbc_reg_mod=1}] add ftbc_speed_bit_4
scoreboard players operation @s ftbc_reg_div /= @s ftbc_reg_const

scoreboard players operation @s ftbc_reg_mod = @s ftbc_reg_div
scoreboard players operation @s ftbc_reg_mod %= @s ftbc_reg_const
tag @s remove ftbc_speed_bit_5
tag @s[scores={ftbc_reg_mod=1}] add ftbc_speed_bit_5
scoreboard players operation @s ftbc_reg_div /= @s ftbc_reg_const

scoreboard players operation @s ftbc_reg_mod = @s ftbc_reg_div
scoreboard players operation @s ftbc_reg_mod %= @s ftbc_reg_const
tag @s remove ftbc_speed_bit_6
tag @s[scores={ftbc_reg_mod=1}] add ftbc_speed_bit_6
scoreboard players operation @s ftbc_reg_div /= @s ftbc_reg_const

scoreboard players operation @s ftbc_reg_mod = @s ftbc_reg_div
scoreboard players operation @s ftbc_reg_mod %= @s ftbc_reg_const
tag @s remove ftbc_speed_bit_7
tag @s[scores={ftbc_reg_mod=1}] add ftbc_speed_bit_7
scoreboard players operation @s ftbc_reg_div /= @s ftbc_reg_const

scoreboard players operation @s ftbc_reg_mod = @s ftbc_reg_div
scoreboard players operation @s ftbc_reg_mod %= @s ftbc_reg_const
tag @s remove ftbc_speed_bit_8
tag @s[scores={ftbc_reg_mod=1}] add ftbc_speed_bit_8
scoreboard players operation @s ftbc_reg_div /= @s ftbc_reg_const

scoreboard players operation @s ftbc_reg_mod = @s ftbc_reg_div
scoreboard players operation @s ftbc_reg_mod %= @s ftbc_reg_const
tag @s remove ftbc_speed_bit_9
tag @s[scores={ftbc_reg_mod=1}] add ftbc_speed_bit_9
scoreboard players operation @s ftbc_reg_div /= @s ftbc_reg_const