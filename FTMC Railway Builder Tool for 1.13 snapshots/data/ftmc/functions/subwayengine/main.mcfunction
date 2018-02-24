# Run the minecart control loop function
function ftmc:subwayengine/autolaunch_loop

# subway departure sound loop function (Default SFX)
tag @e[type=minecart,tag=sfx_ftmc_se,scores={ftcarttimer=50}] add delay_bell_n3
tag @e[type=minecart,tag=sfx_ftmc_se,scores={ftcarttimer=49}] remove delay_bell_n3
tag @e[type=minecart,tag=sfx_ftmc_se,scores={ftcarttimer=44}] add delay_bell_n1
tag @e[type=minecart,tag=sfx_ftmc_se,scores={ftcarttimer=43}] remove delay_bell_n1
tag @e[type=minecart,tag=sfx_ftmc_se,scores={ftcarttimer=30}] add delay_bell_n3
tag @e[type=minecart,tag=sfx_ftmc_se,scores={ftcarttimer=29}] remove delay_bell_n3
tag @e[type=minecart,tag=sfx_ftmc_se,scores={ftcarttimer=24}] add delay_bell_n1
tag @e[type=minecart,tag=sfx_ftmc_se,scores={ftcarttimer=23}] remove delay_bell_n1
execute at @e[type=minecart,tag=delay_bell_n3] run playsound minecraft:block.note.bell block @a ~ ~ ~ 1 0.841
execute at @e[type=minecart,tag=delay_bell_n1] run playsound minecraft:block.note.bell block @a ~ ~ ~ 1 0.667
# SFX destructor
tag @e[type=minecart,tag=sfx_ftmc_se,scores={ftcarttimer=5}] remove sfx_ftmc_se

# subway departure sound loop function (For different SFX use #3)
tag @e[type=minecart,tag=sfx_ftmc_se3,scores={ftcarttimer=50}] add delay_bell_se3
tag @e[type=minecart,tag=sfx_ftmc_se3,scores={ftcarttimer=49}] remove delay_bell_se3
execute at @e[type=minecart,tag=delay_bell_se3] run playsound _se3_sound_placeholder block @a ~ ~ ~ 1 1
# SFX destructor
tag @e[type=minecart,tag=sfx_ftmc_se3,scores={ftcarttimer=5}] remove sfx_ftmc_se3

# subway departure sound loop function (Custom SFX Management Function(s))
# function ftmc:subwayengine/sfx/custom/whatever_you_want
