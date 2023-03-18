#As: a minecart
#At: undefined

# subway departure sound loop function (Default SFX)
tag @s[type=minecart,tag=sfx_ftmc_se,scores={ftcarttimer=50}] add delay_bell_n3
tag @s[type=minecart,tag=sfx_ftmc_se,scores={ftcarttimer=44}] add delay_bell_n1
tag @s[type=minecart,tag=sfx_ftmc_se,scores={ftcarttimer=30}] add delay_bell_n3
tag @s[type=minecart,tag=sfx_ftmc_se,scores={ftcarttimer=24}] add delay_bell_n1
execute at @s[type=minecart,tag=delay_bell_n3] run playsound minecraft:block.note_block.bell block @a ~ ~ ~ 1 0.841
execute at @s[type=minecart,tag=delay_bell_n1] run playsound minecraft:block.note_block.bell block @a ~ ~ ~ 1 0.667
tag @s[type=minecart,tag=delay_bell_n3] remove delay_bell_n3
tag @s[type=minecart,tag=delay_bell_n1] remove delay_bell_n1
# SFX destructor
tag @s[type=minecart,tag=sfx_ftmc_se,scores={ftcarttimer=5}] remove sfx_ftmc_se

# subway departure sound loop function (For different SFX use #3)
tag @s[type=minecart,tag=sfx_ftmc_se3,scores={ftcarttimer=50}] add delay_bell_se3
execute at @s[type=minecart,tag=delay_bell_se3] run playsound _se3_sound_placeholder block @a ~ ~ ~ 1 1
tag @s[type=minecart,tag=delay_bell_se3] remove delay_bell_se3
# SFX destructor
tag @s[type=minecart,tag=sfx_ftmc_se3,scores={ftcarttimer=5}] remove sfx_ftmc_se3
