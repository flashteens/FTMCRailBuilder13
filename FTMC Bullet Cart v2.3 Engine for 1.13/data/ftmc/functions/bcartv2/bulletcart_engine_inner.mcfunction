#As: a minecart
#At: undefined

# initialize the max speed settings (by-cart values)
function ftmc:bcartv2/engine/maxspeed_init_by_cart

scoreboard players set @s[tag=bcartv2] ftbc_recur_tpdx 0
scoreboard players set @s[tag=bcartv2] ftbc_recur_tpdy 0
scoreboard players set @s[tag=bcartv2] ftbc_recur_tpdz 0
scoreboard players operation @s[tag=bcartv2] ftbc_recur_tpspd = @s ftbcspeed
scoreboard players set @s[tag=bcartv2] ftbc_recur_state 0

execute at @s run function ftmc:bcartv2/bulletcart_engine_recur
