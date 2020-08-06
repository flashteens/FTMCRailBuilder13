# This is an inner function, called by function ftmc:bcartv2/bulletcart_engine only.
# Do not try to call this function elsewhere.

tag @s[type=minecart] remove ftbc_pending_for_debug_stopper_msg

execute if entity @s[tag=!zh] run tellraw @p[distance=..1] [{"text":""},{"text":"Detected a ","color":"red"},{"text":"cart stopper","bold":true,"color":"gold"},{"text":" and automatically turned off high-speed mode!","color":"red"},{"text":"","bold":false,"color":"reset"}]
execute if entity @s[tag=zh] run tellraw @p[distance=..1] [{"text":""},{"text":"已偵測到","color":"red"},{"text":"礦車停止器","bold":true,"color":"gold"},{"text":", 高速模式已自動關閉!","color":"red"},{"text":"","bold":false,"color":"reset"}]
