data merge entity @e[type=minecart,limit=1,distance=..2] {Motion:[0d,0d,0d]}
scoreboard players set @e[type=minecart,limit=1,distance=..2] ftcarttimer 100
tag @e[type=minecart,limit=1,distance=..2] add delay_west
tag @e[type=minecart,limit=1,distance=..2] add sfx_ftmc_se
playsound minecraft:block.redstone_torch.burnout block @a ~ ~ ~ 1