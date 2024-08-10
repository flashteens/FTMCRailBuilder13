# Internal function, should be run under 'ftmc:bcartv2/engine/failsafe'
#As/At: @s (minecart with BulletCart mode and tag 'ftbc_failsafe_lock')
#Since 2021-12-18

execute if entity @s[tag=ftbc_failsafe_lock] if block ~ ~-1 ~ magenta_glazed_terracotta[facing=west] run tag @s add ftbc_need_arrowtp
execute if entity @s[tag=ftbc_failsafe_lock] if block ~ ~-1 ~ magenta_glazed_terracotta[facing=east] run tag @s add ftbc_need_arrowtp
execute if entity @s[tag=ftbc_failsafe_lock] if block ~ ~-1 ~ magenta_glazed_terracotta[facing=north] run tag @s add ftbc_need_arrowtp
execute if entity @s[tag=ftbc_failsafe_lock] if block ~ ~-1 ~ magenta_glazed_terracotta[facing=south] run tag @s add ftbc_need_arrowtp

execute if entity @s[tag=ftbc_failsafe_lock] if block ~ ~-1 ~ magenta_glazed_terracotta[facing=west] run scoreboard players add @s ftbc_recur_tpdx 1
execute if entity @s[tag=ftbc_failsafe_lock] if block ~ ~-1 ~ magenta_glazed_terracotta[facing=east] run scoreboard players remove @s ftbc_recur_tpdx 1
execute if entity @s[tag=ftbc_failsafe_lock] if block ~ ~-1 ~ magenta_glazed_terracotta[facing=north] run scoreboard players add @s ftbc_recur_tpdz 1
execute if entity @s[tag=ftbc_failsafe_lock] if block ~ ~-1 ~ magenta_glazed_terracotta[facing=south] run scoreboard players remove @s ftbc_recur_tpdz 1

execute if entity @s[tag=ftbc_failsafe_lock] if block ~ ~-1 ~ magenta_glazed_terracotta[facing=west] run tp @s ~1 ~ ~
execute if entity @s[tag=ftbc_failsafe_lock] if block ~ ~-1 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-1 ~ ~
execute if entity @s[tag=ftbc_failsafe_lock] if block ~ ~-1 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~1
execute if entity @s[tag=ftbc_failsafe_lock] if block ~ ~-1 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-1

tag @s[tag=ftbc_need_arrowtp] remove ftbc_failsafe_lock
tag @s remove ftbc_need_arrowtp
