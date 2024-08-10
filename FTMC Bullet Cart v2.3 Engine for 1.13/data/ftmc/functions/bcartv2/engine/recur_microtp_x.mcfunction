#As: a minecart
#At: don't care
# Inner function call from bulletcart_engine_recur_next, DO NOT call this function elsewhere!

# ftbc_recur_state = 4 | 1x4 | 2x4  ->  Perform adjustment on X-axis (micro telerpotation)
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches 1..1 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 104
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches 2..3 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 114
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches 4..7 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 124
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches 8..15 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 134
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches 16..31 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 144
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches 32..63 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 154
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches 64..127 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 164
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches -1..-1 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 204
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches -3..-2 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 214
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches -7..-4 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 224
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches -15..-8 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 234
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches -31..-16 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 244
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches -63..-32 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 254
execute if score @s[tag=bcartv2] ftbc_recur_state matches 4 if score @s[tag=bcartv2] ftbc_recur_tpdmx matches -127..-64 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 264
execute if score @s[tag=bcartv2] ftbc_recur_state matches 104 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdmx 1
execute if score @s[tag=bcartv2] ftbc_recur_state matches 114 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdmx 2
execute if score @s[tag=bcartv2] ftbc_recur_state matches 124 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdmx 4
execute if score @s[tag=bcartv2] ftbc_recur_state matches 134 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdmx 8
execute if score @s[tag=bcartv2] ftbc_recur_state matches 144 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdmx 16
execute if score @s[tag=bcartv2] ftbc_recur_state matches 154 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdmx 32
execute if score @s[tag=bcartv2] ftbc_recur_state matches 164 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdmx 64
execute if score @s[tag=bcartv2] ftbc_recur_state matches 204 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdmx 1
execute if score @s[tag=bcartv2] ftbc_recur_state matches 214 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdmx 2
execute if score @s[tag=bcartv2] ftbc_recur_state matches 224 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdmx 4
execute if score @s[tag=bcartv2] ftbc_recur_state matches 234 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdmx 8
execute if score @s[tag=bcartv2] ftbc_recur_state matches 244 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdmx 16
execute if score @s[tag=bcartv2] ftbc_recur_state matches 254 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdmx 32
execute if score @s[tag=bcartv2] ftbc_recur_state matches 264 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdmx 64
execute if score @s[tag=bcartv2] ftbc_recur_state matches 104 positioned ~0.0139 ~ ~ run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 114 positioned ~0.0278 ~ ~ run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 124 positioned ~0.0556 ~ ~ run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 134 positioned ~0.1111 ~ ~ run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 144 positioned ~0.2222 ~ ~ run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 154 positioned ~0.4444 ~ ~ run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 164 positioned ~0.8889 ~ ~ run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 204 positioned ~-0.0139 ~ ~ run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 214 positioned ~-0.0278 ~ ~ run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 224 positioned ~-0.0556 ~ ~ run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 234 positioned ~-0.1111 ~ ~ run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 244 positioned ~-0.2222 ~ ~ run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 254 positioned ~-0.4444 ~ ~ run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 264 positioned ~-0.8889 ~ ~ run function ftmc:bcartv2/bulletcart_engine_recur_next
