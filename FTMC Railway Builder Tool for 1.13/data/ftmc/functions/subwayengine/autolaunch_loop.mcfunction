# subway control loop function (east)
execute as @e[type=minecart,tag=delay_east] run data merge entity @s {Motion:[0d,0d,0d]}
tag @e[type=minecart,tag=delay_east,scores={ftcarttimer=1},nbt={Motion:[0d,0d,0d]}] add delay_east_end
tag @e[type=minecart,tag=delay_east_end] remove delay_east 
tag @e[type=minecart,tag=delay_east_end,scores={ftcarttimer=0}] remove delay_east_end
execute as @e[type=minecart,tag=delay_east_end] run data merge entity @s {Motion:[0.25d,0d,0d]}
tag @e[type=minecart,tag=delay_east_end,nbt={Invulnerable:0b}] add already_departed

# subway control loop function (south)
execute as @e[type=minecart,tag=delay_south] run data merge entity @s {Motion:[0d,0d,0d]}
tag @e[type=minecart,tag=delay_south,scores={ftcarttimer=1},nbt={Motion:[0d,0d,0d]}] add delay_south_end
tag @e[type=minecart,tag=delay_south_end] remove delay_south 
tag @e[type=minecart,tag=delay_south_end,scores={ftcarttimer=0}] remove delay_south_end
execute as @e[type=minecart,tag=delay_south_end] run data merge entity @s {Motion:[0d,0d,0.25d]}
tag @e[type=minecart,tag=delay_south_end,nbt={Invulnerable:0b}] add already_departed

# subway control loop function (west)
execute as @e[type=minecart,tag=delay_west] run data merge entity @s {Motion:[0d,0d,0d]}
tag @e[type=minecart,tag=delay_west,scores={ftcarttimer=1},nbt={Motion:[0d,0d,0d]}] add delay_west_end
tag @e[type=minecart,tag=delay_west_end] remove delay_west 
tag @e[type=minecart,tag=delay_west_end,scores={ftcarttimer=0}] remove delay_west_end
execute as @e[type=minecart,tag=delay_west_end] run data merge entity @s {Motion:[-0.25d,0d,0d]}
tag @e[type=minecart,tag=delay_west_end,nbt={Invulnerable:0b}] add already_departed

# subway control loop function (north)
execute as @e[type=minecart,tag=delay_north] run data merge entity @s {Motion:[0d,0d,0d]}
tag @e[type=minecart,tag=delay_north,scores={ftcarttimer=1},nbt={Motion:[0d,0d,0d]}] add delay_north_end
tag @e[type=minecart,tag=delay_north_end] remove delay_north
tag @e[type=minecart,tag=delay_north_end,scores={ftcarttimer=0}] remove delay_north_end
execute as @e[type=minecart,tag=delay_north_end] run data merge entity @s {Motion:[0d,0d,-0.25d]}
tag @e[type=minecart,tag=delay_north_end,nbt={Invulnerable:0b}] add already_departed

# minecart auto-cleaning mechanism - basic conditions
execute as @e[type=minecart,tag=already_departed] run tag @s add to_be_removed
execute as @e[type=minecart,tag=already_departed] at @s if entity @e[type=!minecart,limit=1,distance=..1] run tag @s remove to_be_removed

# minecart auto-cleaning mechanism - do not apply to BulletCarts (v1-v2) which are in high-speed mode.
tag @e[tag=bulletcart,type=minecart] remove to_be_removed
tag @e[tag=bcartv2,type=minecart] remove to_be_removed

# minecart auto-cleaning mechanism - the removal process
execute at @e[type=minecart,tag=to_be_removed] run playsound minecraft:entity.player.attack.crit block @a ~ ~ ~ 0.5
kill @e[type=minecart,tag=to_be_removed]

# minecart timer countdown
scoreboard players remove @e[type=minecart,scores={ftcarttimer=1..}] ftcarttimer 1