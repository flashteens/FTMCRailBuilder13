# Applicable since v2.2.
# For inner invocation only (target: @s[type=minecart,tag=bcartv2,tag=ftbc_is_v22_enabled])
# Under 29 km/h, minecart speed should be slowed down by reducing the NBT value of Motion.
# use the following 2 scoreboard values for temporary purposes:
# ftbc_reg_0, ftbc_reg_const

# ftbc_reg_0 := ftbcspeed
scoreboard players operation @s ftbc_reg_0 = @s ftbcspeed

# ftbc_reg_0 += 29
scoreboard players set @s ftbc_reg_const 29
scoreboard players operation @s ftbc_reg_0 += @s ftbc_reg_const

# ftbc_reg_0 := ftbc_reg_0 * (10000/54)
scoreboard players set @s ftbc_reg_const 10000
scoreboard players operation @s ftbc_reg_0 *= @s ftbc_reg_const
scoreboard players set @s ftbc_reg_const 54
scoreboard players operation @s ftbc_reg_0 /= @s ftbc_reg_const

# Make sure that ftbc_reg_0 should be between 0 and 10000.
scoreboard players set @s ftbc_reg_const 0
scoreboard players operation @s ftbc_reg_0 > @s ftbc_reg_const
scoreboard players set @s ftbc_reg_const 10000
scoreboard players operation @s ftbc_reg_0 < @s ftbc_reg_const

execute if entity @s[scores={bulletcartew=1..}] run execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s ftbc_reg_0
execute if entity @s[scores={bulletcartew=..-1}] run execute store result entity @s Motion[0] double -0.0001 run scoreboard players get @s ftbc_reg_0
execute if entity @s[scores={bulletcartns=1..}] run execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s ftbc_reg_0
execute if entity @s[scores={bulletcartns=..-1}] run execute store result entity @s Motion[2] double -0.0001 run scoreboard players get @s ftbc_reg_0
