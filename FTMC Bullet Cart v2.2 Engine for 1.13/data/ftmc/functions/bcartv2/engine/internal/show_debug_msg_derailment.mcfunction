# This is an inner function, called by function ftmc:bcartv2/bulletcart_engine only.
# Do not try to call this function elsewhere.

tag @s[type=minecart] remove ftbc_pending_for_debug_derail_msg

execute if entity @s[tag=!zh] run tellraw @p[distance=..1] [{"text":""},{"text":"[WARNING]","bold":true,"color":"gold"},{"text":" Your cart got ","color":"red"},{"text":"DERAILED","bold":true,"color":"gold"},{"text":" during high-speed mode!","color":"red"},{"text":"","bold":false,"color":"reset"}]
execute if entity @s[tag=zh] run tellraw @p[distance=..1] [{"text":""},{"text":"[警告]","bold":true,"color":"gold"},{"text":" 您的礦車已於高速模式下發生","color":"red"},{"text":"出軌","bold":true,"color":"gold"},{"text":"意外!","color":"red"},{"text":"","bold":false,"color":"reset"}]
