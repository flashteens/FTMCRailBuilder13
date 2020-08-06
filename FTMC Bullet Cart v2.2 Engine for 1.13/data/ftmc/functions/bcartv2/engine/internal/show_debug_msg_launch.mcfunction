# This is an inner function, called by function ftmc:bcartv2/bulletcart_engine only.
# Do not try to call this function elsewhere.

tag @s[type=minecart] remove ftbc_pending_for_debug_launch_msg

# Messages for v2.0
execute if entity @s[tag=!zh,tag=bcartv2,tag=!ftbc_is_v21_enabled] run tellraw @p[distance=..1] [{"text":""},{"text":"Started ","color":"green"},{"text":"high-speed mode","bold":true,"color":"yellow"},{"text":". (version: ","color":"green"},{"text":"2.0","bold":true,"color":"yellow"},{"text":")","color":"green"},{"text":"","bold":false,"color":"reset"}]
execute if entity @s[tag=zh,tag=bcartv2,tag=!ftbc_is_v21_enabled] run tellraw @p[distance=..1] [{"text":""},{"text":"礦車已啟動","color":"green"},{"text":"高速模式","bold":true,"color":"yellow"},{"text":"。 (版本: ","color":"green"},{"text":"2.0","bold":true,"color":"yellow"},{"text":")","color":"green"},{"text":"","bold":false,"color":"reset"}]

execute if entity @s[tag=ftbc_is_v21_enabled,tag=!ftbc_is_v22_enabled] run function ftmc:bcartv2/engine/internal/show_debug_msg_launch_v21
execute if entity @s[tag=ftbc_is_v22_enabled] run function ftmc:bcartv2/engine/internal/show_debug_msg_launch_v22
