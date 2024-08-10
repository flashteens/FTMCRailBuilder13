#As: a minecart
#At: position of the minecart, applied with an XYZ offset for recursion operations

# Adjust the coordinates before running the next iteration


# Normalize the state code to range within 0..9
scoreboard players set @s[tag=bcartv2] ftbc_reg_0 10
execute if score @s[tag=bcartv2] ftbc_recur_state matches 0.. run scoreboard players operation @s[tag=bcartv2] ftbc_recur_state %= @s[tag=bcartv2] ftbc_reg_0
execute if score @s[tag=bcartv2] ftbc_recur_state matches ..-1 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 0
scoreboard players reset @s[tag=bcartv2] ftbc_reg_0



# ftbc_recur_state = 1 | 11 | 21  ->  Perform adjustment on X-axis
execute if score @s[tag=bcartv2] ftbc_recur_state matches 1 if score @s[tag=bcartv2] ftbc_recur_tpdx matches 1.. run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 11
execute if score @s[tag=bcartv2] ftbc_recur_state matches 1 if score @s[tag=bcartv2] ftbc_recur_tpdx matches ..-1 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 21
execute if score @s[tag=bcartv2] ftbc_recur_state matches 1 if score @s[tag=bcartv2] ftbc_recur_tpdx matches 0 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 2
execute if score @s[tag=bcartv2] ftbc_recur_state matches 11 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdx 1
execute if score @s[tag=bcartv2] ftbc_recur_state matches 21 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdx 1
execute if score @s[tag=bcartv2] ftbc_recur_state matches 11 positioned ~1 ~ ~ run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 21 positioned ~-1 ~ ~ run function ftmc:bcartv2/bulletcart_engine_recur_next

# ftbc_recur_state = 2 | 12 | 22  ->  Perform adjustment on Y-axis
execute if score @s[tag=bcartv2] ftbc_recur_state matches 2 if score @s[tag=bcartv2] ftbc_recur_tpdy matches 1.. run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 12
execute if score @s[tag=bcartv2] ftbc_recur_state matches 2 if score @s[tag=bcartv2] ftbc_recur_tpdy matches ..-1 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 22
execute if score @s[tag=bcartv2] ftbc_recur_state matches 2 if score @s[tag=bcartv2] ftbc_recur_tpdy matches 0 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 3
execute if score @s[tag=bcartv2] ftbc_recur_state matches 12 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdy 1
execute if score @s[tag=bcartv2] ftbc_recur_state matches 22 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdy 1
execute if score @s[tag=bcartv2] ftbc_recur_state matches 12 positioned ~ ~1 ~ run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 22 positioned ~ ~-1 ~ run function ftmc:bcartv2/bulletcart_engine_recur_next

# ftbc_recur_state = 3 | 13 | 23  ->  Perform adjustment on Z-axis
execute if score @s[tag=bcartv2] ftbc_recur_state matches 3 if score @s[tag=bcartv2] ftbc_recur_tpdz matches 1.. run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 13
execute if score @s[tag=bcartv2] ftbc_recur_state matches 3 if score @s[tag=bcartv2] ftbc_recur_tpdz matches ..-1 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 23
execute if score @s[tag=bcartv2] ftbc_recur_state matches 3 if score @s[tag=bcartv2] ftbc_recur_tpdz matches 0 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 4
execute if score @s[tag=bcartv2] ftbc_recur_state matches 13 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdz 1
execute if score @s[tag=bcartv2] ftbc_recur_state matches 23 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdz 1
execute if score @s[tag=bcartv2] ftbc_recur_state matches 13 positioned ~ ~ ~1 run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 23 positioned ~ ~ ~-1 run function ftmc:bcartv2/bulletcart_engine_recur_next

# ftbc_recur_state = 4 | 1x4 | 2x4  ->  Perform adjustment on X-axis (micro telerpotation)
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches 1.. run function ftmc:bcartv2/engine/recur_microtp_x
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches ..-1 run function ftmc:bcartv2/engine/recur_microtp_x
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches 0 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 5

# ftbc_recur_state = 5  ->  (reserved for future use)
execute if score @s[tag=bcartv2] ftbc_recur_state matches 5 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 6

# ftbc_recur_state = 6 | 1x6 | 2x6  ->  Perform adjustment on Z-axis (micro telerpotation)
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches 1.. run function ftmc:bcartv2/engine/recur_microtp_z
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches ..-1 run function ftmc:bcartv2/engine/recur_microtp_z
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches 0 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 7

# ftbc_recur_state = 7  ->  (reserved for future use)
execute if score @s[tag=bcartv2] ftbc_recur_state matches 7 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 8


# Run the next iteration after the coordinates offset update is done.
execute if score @s[tag=bcartv2] ftbc_recur_state matches 8 if score @s[tag=bcartv2] ftbc_recur_tpspd matches 1.. run scoreboard players operation @s[tag=bcartv2] ftbc_recur_itspd -= @s[tag=bcartv2] ftbc_recur_tpspd
execute if score @s[tag=bcartv2] ftbc_recur_state matches 8 unless score @s[tag=bcartv2] ftbc_recur_tpspd matches 1.. run scoreboard players remove @s[tag=bcartv2] ftbc_recur_itspd 72

execute if score @s[tag=bcartv2] ftbc_recur_state matches 8 if score @s[tag=bcartv2] ftbc_recur_itspd matches 0.. run function ftmc:bcartv2/bulletcart_engine_recur

# Reset ftbc_recur_state to prevent unexpected recursive executions.
execute if score @s[tag=bcartv2] ftbc_recur_state matches 8 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 0
