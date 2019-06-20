# Initialize the acceleration parameters to adapt new versions when reloading this datapack in-game.
execute unless entity @s[scores={ftbc_accel_ntick=0..}] run scoreboard players set @s ftbc_accel_ntick 0
execute unless entity @s[scores={ftbc_accelperiod=1..}] run scoreboard players set @s ftbc_accelperiod 1

# Increment the acceleration timer.
scoreboard players add @s ftbc_accel_ntick 1
scoreboard players operation @s ftbc_accel_ntick %= @s ftbc_accelperiod

# Gradually increase or decrease the current speed of each minecart.
execute as @s[tag=bcartv2,type=minecart,scores={ftbc_accel_ntick=0,ftbcspeed=..970}] at @s if score @s ftbcspeed < @s ftbctargetspeed run scoreboard players add @s ftbcspeed 1
execute as @s[tag=bcartv2,type=minecart,scores={ftbc_accel_ntick=0,ftbcspeed=1..},tag=!ftbc_emerbrake] at @s if score @s ftbcspeed > @s ftbctargetspeed run scoreboard players remove @s ftbcspeed 1
execute as @s[tag=bcartv2,type=minecart,scores={ftbc_accel_ntick=0,ftbcspeed=1..},tag=ftbc_emerbrake] at @s if score @s ftbcspeed > @s ftbctargetspeed run scoreboard players remove @s ftbcspeed 2

# Avoid negative speed values.
scoreboard players set @s[tag=bcartv2,type=minecart,scores={ftbcspeed=..-1}] ftbcspeed 0

# Following line: For debug only
# tellraw flashteens ["",{"text":"Speed: "},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbcspeed"},"bold":true,"color":"yellow"},{"text":" km/h"}," ",{"text":"(Limit: "},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbctargetspeed"},"bold":true,"color":"green"},{"text":" km/h)"}]