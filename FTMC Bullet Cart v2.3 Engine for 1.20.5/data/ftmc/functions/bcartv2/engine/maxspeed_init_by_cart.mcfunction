#As: a minecart
#At: undefined

# Update the internal value 'ftbcmaxspeed' for the convenience of calculation.
# ftbcmaxspeed := min(#ftbc_config.BCartMaxSpeed, local.BCartMaxSpeed) - 29
execute as @s[tag=bcartv2,type=minecart] run scoreboard players operation @s ftbcmaxspeed = #ftbc_config BCartMaxSpeed
execute as @s[tag=bcartv2,type=minecart,scores={BCartMaxSpeed=1..}] run scoreboard players operation @s ftbcmaxspeed < @s BCartMaxSpeed
execute as @s[tag=bcartv2,type=minecart] run scoreboard players remove @s ftbcmaxspeed 29
