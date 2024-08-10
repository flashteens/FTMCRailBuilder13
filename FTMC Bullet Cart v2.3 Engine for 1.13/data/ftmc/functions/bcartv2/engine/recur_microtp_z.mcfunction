#As: a minecart
#At: don't care
# Inner function call from bulletcart_engine_recur_next, DO NOT call this function elsewhere!

# ftbc_recur_state = 6 | 1x6 | 2x6  ->  Perform adjustment on Z-axis (micro telerpotation)
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches 1..1 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 106
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches 2..3 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 116
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches 4..7 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 126
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches 8..15 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 136
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches 16..31 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 146
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches 32..63 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 156
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches 64..127 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 166
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches -1..-1 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 206
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches -3..-2 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 216
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches -7..-4 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 226
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches -15..-8 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 236
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches -31..-16 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 246
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches -63..-32 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 256
execute if score @s[tag=bcartv2] ftbc_recur_state matches 6 if score @s[tag=bcartv2] ftbc_recur_tpdmz matches -127..-64 run scoreboard players set @s[tag=bcartv2] ftbc_recur_state 266
execute if score @s[tag=bcartv2] ftbc_recur_state matches 106 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdmz 1
execute if score @s[tag=bcartv2] ftbc_recur_state matches 116 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdmz 2
execute if score @s[tag=bcartv2] ftbc_recur_state matches 126 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdmz 4
execute if score @s[tag=bcartv2] ftbc_recur_state matches 136 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdmz 8
execute if score @s[tag=bcartv2] ftbc_recur_state matches 146 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdmz 16
execute if score @s[tag=bcartv2] ftbc_recur_state matches 156 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdmz 32
execute if score @s[tag=bcartv2] ftbc_recur_state matches 166 run scoreboard players remove @s[tag=bcartv2] ftbc_recur_tpdmz 64
execute if score @s[tag=bcartv2] ftbc_recur_state matches 206 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdmz 1
execute if score @s[tag=bcartv2] ftbc_recur_state matches 216 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdmz 2
execute if score @s[tag=bcartv2] ftbc_recur_state matches 226 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdmz 4
execute if score @s[tag=bcartv2] ftbc_recur_state matches 236 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdmz 8
execute if score @s[tag=bcartv2] ftbc_recur_state matches 246 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdmz 16
execute if score @s[tag=bcartv2] ftbc_recur_state matches 256 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdmz 32
execute if score @s[tag=bcartv2] ftbc_recur_state matches 266 run scoreboard players add @s[tag=bcartv2] ftbc_recur_tpdmz 64
execute if score @s[tag=bcartv2] ftbc_recur_state matches 106 positioned ~ ~ ~0.0139 run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 116 positioned ~ ~ ~0.0278 run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 126 positioned ~ ~ ~0.0556 run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 136 positioned ~ ~ ~0.1111 run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 146 positioned ~ ~ ~0.2222 run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 156 positioned ~ ~ ~0.4444 run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 166 positioned ~ ~ ~0.8889 run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 206 positioned ~ ~ ~-0.0139 run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 216 positioned ~ ~ ~-0.0278 run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 226 positioned ~ ~ ~-0.0556 run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 236 positioned ~ ~ ~-0.1111 run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 246 positioned ~ ~ ~-0.2222 run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 256 positioned ~ ~ ~-0.4444 run function ftmc:bcartv2/bulletcart_engine_recur_next
execute if score @s[tag=bcartv2] ftbc_recur_state matches 266 positioned ~ ~ ~-0.8889 run function ftmc:bcartv2/bulletcart_engine_recur_next
