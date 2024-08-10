#As: a minecart
#At: don't care

# Initialize the acceleration parameters to adapt new versions when reloading this datapack in-game.
execute unless entity @s[scores={ftbc_accel_ntick=0..}] run scoreboard players set @s ftbc_accel_ntick 0
execute unless entity @s[scores={ftbc_accelperiod=1..}] run scoreboard players set @s ftbc_accelperiod 1

# Increment the acceleration timer.
scoreboard players add @s ftbc_accel_ntick 1
scoreboard players operation @s ftbc_accel_ntick %= @s ftbc_accelperiod

# Gradually increase or decrease the current speed of each minecart.
# [A] normal acceleration
execute as @s[tag=bcartv2,type=minecart,scores={ftbc_accel_ntick=0,ftbcspeed=..970}] if score @s ftbcspeed < @s ftbctargetspeed if score @s ftbcspeed < @s ftbcmaxspeed run scoreboard players add @s ftbcspeed 1
# [B] normal braking
execute as @s[tag=bcartv2,type=minecart,scores={ftbc_accel_ntick=0},tag=!ftbc_emerbrake] if score @s ftbcspeed > @s ftbctargetspeed run tag @s add ftbc_normal_brake_cond
execute as @s[tag=bcartv2,type=minecart,scores={ftbc_accel_ntick=0},tag=!ftbc_emerbrake] if score @s ftbcspeed > @s ftbcmaxspeed run tag @s add ftbc_normal_brake_cond
execute as @s[tag=bcartv2,type=minecart,scores={ftbc_accel_ntick=0},tag=ftbc_normal_brake_cond] run scoreboard players remove @s ftbcspeed 1
execute as @s[tag=bcartv2,type=minecart,scores={ftbc_accel_ntick=0},tag=ftbc_normal_brake_cond] run tag @s remove ftbc_normal_brake_cond
# [C] emergency braking
execute as @s[tag=bcartv2,type=minecart,scores={ftbc_accel_ntick=0,ftbcspeed=1..},tag=ftbc_emerbrake] if score @s ftbcspeed > @s ftbctargetspeed run scoreboard players remove @s ftbcspeed 2

# Avoid negative speed values. (for v2.1 and earlier, minimum speed is 29 km/h)
scoreboard players set @s[tag=bcartv2,tag=!ftbc_is_v22_enabled,type=minecart,scores={ftbcspeed=..-1}] ftbcspeed 0

# Avoid negative speed values. (since v2.2, minimum speed is 1 km/h)
scoreboard players set @s[tag=bcartv2,tag=ftbc_is_v22_enabled,type=minecart,scores={ftbcspeed=..-29}] ftbcspeed -28

# Following line: For debug only
# tellraw flashteens ["",{"text":"Speed: "},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbcspeed"},"bold":true,"color":"yellow"},{"text":" km/h"}," ",{"text":"(Limit: "},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbctargetspeed"},"bold":true,"color":"green"},{"text":" km/h)"}]