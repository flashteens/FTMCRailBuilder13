# This is an inner function, called by function ftmc:bcartv2/engine/internal/show_debug_msg_launch only.
# Do not try to call this function elsewhere.

# Identify if minecart acceleration is not provided from the BulletCart datapack.
# Tag ftbc_debug_is_accel_type_unnamed is temporary and will be removed when this function ends.
tag @s add ftbc_debug_is_accel_type_unnamed
tag @s[scores={ftbc_accelperiod=1..2}] remove ftbc_debug_is_accel_type_unnamed
tag @s[scores={ftbc_accelperiod=5}] remove ftbc_debug_is_accel_type_unnamed
tag @s[scores={ftbc_accelperiod=8}] remove ftbc_debug_is_accel_type_unnamed


# Messages for Regular
execute if entity @s[tag=!zh,scores={ftbc_accelperiod=5}] run tellraw @p[distance=..1] [{"text":""},{"text":"Started ","color":"green"},{"text":"high-speed mode","bold":true,"color":"yellow"},{"text":". (version: ","color":"green"},{"text":"2.1 Regular","bold":true,"color":"yellow"},{"text":")","color":"green"},{"text":"","bold":false}]
execute if entity @s[tag=zh,scores={ftbc_accelperiod=5}] run tellraw @p[distance=..1] [{"text":""},{"text":"礦車已啟動","color":"green"},{"text":"高速模式","bold":true,"color":"yellow"},{"text":"。 (版本: ","color":"green"},{"text":"2.1 標準型","bold":true,"color":"yellow"},{"text":")","color":"green"},{"text":"","bold":false}]

# Messages for Smooth
execute if entity @s[tag=!zh,scores={ftbc_accelperiod=8}] run tellraw @p[distance=..1] [{"text":""},{"text":"Started ","color":"green"},{"text":"high-speed mode","bold":true,"color":"yellow"},{"text":". (version: ","color":"green"},{"text":"2.1 Smooth","bold":true,"color":"yellow"},{"text":")","color":"green"},{"text":"","bold":false}]
execute if entity @s[tag=zh,scores={ftbc_accelperiod=8}] run tellraw @p[distance=..1] [{"text":""},{"text":"礦車已啟動","color":"green"},{"text":"高速模式","bold":true,"color":"yellow"},{"text":"。 (版本: ","color":"green"},{"text":"2.1 平穩型","bold":true,"color":"yellow"},{"text":")","color":"green"},{"text":"","bold":false}]

# Messages for Turbo
execute if entity @s[tag=!zh,scores={ftbc_accelperiod=2}] run tellraw @p[distance=..1] [{"text":""},{"text":"Started ","color":"green"},{"text":"high-speed mode","bold":true,"color":"yellow"},{"text":". (version: ","color":"green"},{"text":"2.1 Turbo","bold":true,"color":"yellow"},{"text":")","color":"green"},{"text":"","bold":false}]
execute if entity @s[tag=zh,scores={ftbc_accelperiod=2}] run tellraw @p[distance=..1] [{"text":""},{"text":"礦車已啟動","color":"green"},{"text":"高速模式","bold":true,"color":"yellow"},{"text":"。 (版本: ","color":"green"},{"text":"2.1 強力加速型","bold":true,"color":"yellow"},{"text":")","color":"green"},{"text":"","bold":false}]

# Messages for SuperTurbo
execute if entity @s[tag=!zh,scores={ftbc_accelperiod=1}] run tellraw @p[distance=..1] [{"text":""},{"text":"Started ","color":"green"},{"text":"high-speed mode","bold":true,"color":"yellow"},{"text":". (version: ","color":"green"},{"text":"2.1 SuperTurbo","bold":true,"color":"yellow"},{"text":")","color":"green"},{"text":"","bold":false}]
execute if entity @s[tag=zh,scores={ftbc_accelperiod=1}] run tellraw @p[distance=..1] [{"text":""},{"text":"礦車已啟動","color":"green"},{"text":"高速模式","bold":true,"color":"yellow"},{"text":"。 (版本: ","color":"green"},{"text":"2.1 超強加速型","bold":true,"color":"yellow"},{"text":")","color":"green"},{"text":"","bold":false}]

# Messages for Other types
execute if entity @s[tag=!zh,tag=ftbc_debug_is_accel_type_unnamed] run tellraw @p[distance=..1] [{"text":""},{"text":"Started ","color":"green"},{"text":"high-speed mode","bold":true,"color":"yellow"},{"text":". (version: ","color":"green"},{"text":"2.1","bold":true,"color":"yellow"},{"text":", AP=","color":"green"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_accelperiod"},"bold":true,"color":"yellow"},{"text":")","color":"green"},{"text":"","bold":false}]
execute if entity @s[tag=!zh,tag=ftbc_debug_is_accel_type_unnamed] run tellraw @p[distance=..1] [{"text":""},{"text":"* AP value = 20 / acceleration(km/h/s)","color":"green"},{"text":"","bold":false}]
execute if entity @s[tag=zh,tag=ftbc_debug_is_accel_type_unnamed] run tellraw @p[distance=..1] [{"text":""},{"text":"礦車已啟動","color":"green"},{"text":"高速模式","bold":true,"color":"yellow"},{"text":"。 (版本: ","color":"green"},{"text":"2.1","bold":true,"color":"yellow"},{"text":", AP=","color":"green"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_accelperiod"},"bold":true,"color":"yellow"},{"text":")","color":"green"},{"text":"","bold":false}]
execute if entity @s[tag=zh,tag=ftbc_debug_is_accel_type_unnamed] run tellraw @p[distance=..1] [{"text":""},{"text":"* AP值 = 20 / 加速度(km/h/s)","color":"green"},{"text":"","bold":false}]


# Remove temporary tag ftbc_debug_is_accel_type_unnamed.
tag @s remove ftbc_debug_is_accel_type_unnamed
