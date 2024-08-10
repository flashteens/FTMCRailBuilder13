#As: a minecart
#At: don't care

execute as @s[type=minecart] run function ftmc:bcartv2/control/reset
tag @s[type=minecart] remove bcartv2

# Clear all speed bit tags to avoid being teleported again.
execute as @s[type=minecart] run function ftmc:bcartv2/engine/speed_tween
