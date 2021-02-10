# Note: unlike some other internal functions, this function does not require to be written within an /execute clause.

execute unless score #ftbc_config BCartMaxSpeed matches 1..999 run scoreboard players set #ftbc_config BCartMaxSpeed 999
execute as @e[tag=bcartv2,type=minecart] run scoreboard players operation @s BCartMaxSpeed = #ftbc_config BCartMaxSpeed

# Update the internal value 'ftbcmaxspeed' for the convenience of calculation.
# ftbcmaxspeed := BCartMaxSpeed - 29
execute as @e[tag=bcartv2,type=minecart] run scoreboard players operation @s ftbcmaxspeed = @s BCartMaxSpeed
execute as @e[tag=bcartv2,type=minecart] run scoreboard players remove @s ftbcmaxspeed 29
