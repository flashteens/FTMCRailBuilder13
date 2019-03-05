# Gradually increase or decrease the current speed of each minecart, according to the target speed value.
execute as @s[tag=bcartv2,type=minecart,scores={ftbcspeed=..970}] at @s if score @s ftbcspeed < @s ftbctargetspeed run scoreboard players add @s ftbcspeed 1
execute as @s[tag=bcartv2,type=minecart,scores={ftbcspeed=1..},tag=!ftbc_emerbrake] at @s if score @s ftbcspeed > @s ftbctargetspeed run scoreboard players remove @s ftbcspeed 1
execute as @s[tag=bcartv2,type=minecart,scores={ftbcspeed=1..},tag=ftbc_emerbrake] at @s if score @s ftbcspeed > @s ftbctargetspeed run scoreboard players remove @s ftbcspeed 2

# Avoid negative speed values.
scoreboard players set @s[tag=bcartv2,type=minecart,scores={ftbcspeed=..-1}] ftbcspeed 0

# Following line: For debug only
# tellraw flashteens ["",{"text":"Speed: "},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbcspeed"},"bold":true,"color":"yellow"},{"text":" km/h"}," ",{"text":"(Limit: "},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbctargetspeed"},"bold":true,"color":"green"},{"text":" km/h)"}]

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