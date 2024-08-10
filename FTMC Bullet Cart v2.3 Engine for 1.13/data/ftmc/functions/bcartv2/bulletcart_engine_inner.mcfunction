#As: a minecart
#At: undefined

# initialize the max speed settings (by-cart values)
function ftmc:bcartv2/engine/maxspeed_init_by_cart

scoreboard players set @s[tag=bcartv2] ftbc_recur_tpdx 0
scoreboard players set @s[tag=bcartv2] ftbc_recur_tpdy 0
scoreboard players set @s[tag=bcartv2] ftbc_recur_tpdz 0
scoreboard players set @s[tag=bcartv2] ftbc_recur_tpdmx 0
scoreboard players set @s[tag=bcartv2] ftbc_recur_tpdmz 0
scoreboard players operation @s[tag=bcartv2] ftbc_recur_itspd = @s ftbcspeed
scoreboard players set @s[tag=bcartv2] ftbc_recur_count 0
#scoreboard players set @s[tag=bcartv2] ftbc_recur_state 0

execute at @s[tag=bcartv2] run tellraw flashteens ["",{"text":"TestValue = "},{"score":{"name":"@e[type=minecart,sort=nearest,limit=1]","objective":"ftbc_recur_itspd"},"bold":true,"color":"yellow"},{"text":" km/h"}," ",{"text":"(Actual: "},{"score":{"name":"@e[type=minecart,sort=nearest,limit=1]","objective":"ftbcspeed"},"bold":true,"color":"green"},{"text":" km/h)"}]
execute at @s run function ftmc:bcartv2/bulletcart_engine_recur
