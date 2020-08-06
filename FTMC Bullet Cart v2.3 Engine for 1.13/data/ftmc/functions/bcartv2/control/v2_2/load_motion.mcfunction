# Applicable since v2.2.
# For inner invocation only (target: @s[type=minecart,tag=bcartv2,tag=ftbc_is_v22_enabled])
# Load the speed value when high-speed mode begins, according to the current NBT value of Motion.
# use the following 3 scoreboard values for temporary purposes:
# ftbc_reg_3, ftbc_reg_5, ftbc_reg_const

# Fetch the X and Z motion values from the minecart. (normalized to the range of 0..10000)
execute store result score @s ftbc_reg_3 run data get entity @s Motion[0] 10000
execute store result score @s ftbc_reg_5 run data get entity @s Motion[2] 10000

# Obtain max(abs(speed X), abs(speed Z)) * (54/10000) as the value for BulletCart speed.
scoreboard players set @s ftbc_reg_const -1
execute if entity @s[scores={ftbc_reg_3=..-1}] run scoreboard players operation @s ftbc_reg_3 *= @s ftbc_reg_const
execute if entity @s[scores={ftbc_reg_5=..-1}] run scoreboard players operation @s ftbc_reg_5 *= @s ftbc_reg_const
scoreboard players operation @s ftbc_reg_3 > @s ftbc_reg_5
scoreboard players set @s ftbc_reg_const 54
scoreboard players operation @s ftbc_reg_3 *= @s ftbc_reg_const
scoreboard players set @s ftbc_reg_const 10000
scoreboard players operation @s ftbc_reg_3 /= @s ftbc_reg_const

# Adjust ftbc_reg_3 by the offset (29) to fit the actual domain of ftbcspeed.
scoreboard players set @s ftbc_reg_const 29
scoreboard players operation @s ftbc_reg_3 -= @s ftbc_reg_const

# Do not let the minecart exceed 29 km/h at this moment.
execute if entity @s[scores={ftbc_reg_3=1..}] run scoreboard players set @s ftbc_reg_3 0

# Apply the speed value to ftbcspeed.
scoreboard players operation @s ftbcspeed = @s ftbc_reg_3
