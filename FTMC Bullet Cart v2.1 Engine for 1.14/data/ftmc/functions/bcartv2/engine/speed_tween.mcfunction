# Gradually increase or decrease the current speed of each minecart, according to its acceleration setting and target speed value.
function ftmc:bcartv2/engine/speed_tween_accel

# Perform speed value bit operation for variable tp distances.
# use the following 3 scoreboard values:
# ftbc_reg_div, ftbc_reg_mod, ftbc_reg_const

# The tags ftbc_speed_bit_0 (LSB) - ftbc_speed_bit_9 (MSB) will be used by engine functions for teleportation.

scoreboard players operation @s ftbc_reg_div = @s ftbcspeed
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