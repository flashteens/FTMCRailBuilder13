# Reset offline players' values every second.
execute if score #_GLOBAL ftmc_sm_clrtimer matches 0 run scoreboard players reset * CurrentSpeed
scoreboard players add #_GLOBAL ftmc_sm_clrtimer 1
scoreboard players set #_GLOBAL ftmc_sm_const 20
scoreboard players operation #_GLOBAL ftmc_sm_clrtimer %= #_GLOBAL ftmc_sm_const