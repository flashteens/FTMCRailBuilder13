#As: a minecart
#At: undefined

# (Since 20230528) bug fix: minecart would never depart if scoreboard value 'ftcarttimer' disappears (may be caused by player rejoining the map)
execute as @s[type=minecart,tag=delay_east] unless entity @s[scores={ftcarttimer=0..}] run scoreboard players set @s ftcarttimer 1
execute as @s[type=minecart,tag=delay_south] unless entity @s[scores={ftcarttimer=0..}] run scoreboard players set @s ftcarttimer 1
execute as @s[type=minecart,tag=delay_west] unless entity @s[scores={ftcarttimer=0..}] run scoreboard players set @s ftcarttimer 1
execute as @s[type=minecart,tag=delay_north] unless entity @s[scores={ftcarttimer=0..}] run scoreboard players set @s ftcarttimer 1

# subway control loop function (east)
execute as @s[type=minecart,tag=delay_east] run data merge entity @s {Motion:[0d,0d,0d]}
tag @s[type=minecart,tag=delay_east,scores={ftcarttimer=1},nbt={Motion:[0d,0d,0d]}] add delay_east_end
tag @s[type=minecart,tag=delay_east_end] remove delay_east 
tag @s[type=minecart,tag=delay_east_end,scores={ftcarttimer=0}] remove delay_east_end
execute as @s[type=minecart,tag=delay_east_end] run data merge entity @s {Motion:[0.25d,0d,0d]}
tag @s[type=minecart,tag=delay_east_end,nbt={Invulnerable:0b}] add already_departed
tag @s[type=minecart,tag=delay_east_end,nbt={Invulnerable:0b}] remove psd_mode

# subway control loop function (south)
execute as @s[type=minecart,tag=delay_south] run data merge entity @s {Motion:[0d,0d,0d]}
tag @s[type=minecart,tag=delay_south,scores={ftcarttimer=1},nbt={Motion:[0d,0d,0d]}] add delay_south_end
tag @s[type=minecart,tag=delay_south_end] remove delay_south 
tag @s[type=minecart,tag=delay_south_end,scores={ftcarttimer=0}] remove delay_south_end
execute as @s[type=minecart,tag=delay_south_end] run data merge entity @s {Motion:[0d,0d,0.25d]}
tag @s[type=minecart,tag=delay_south_end,nbt={Invulnerable:0b}] add already_departed
tag @s[type=minecart,tag=delay_south_end,nbt={Invulnerable:0b}] remove psd_mode

# subway control loop function (west)
execute as @s[type=minecart,tag=delay_west] run data merge entity @s {Motion:[0d,0d,0d]}
tag @s[type=minecart,tag=delay_west,scores={ftcarttimer=1},nbt={Motion:[0d,0d,0d]}] add delay_west_end
tag @s[type=minecart,tag=delay_west_end] remove delay_west 
tag @s[type=minecart,tag=delay_west_end,scores={ftcarttimer=0}] remove delay_west_end
execute as @s[type=minecart,tag=delay_west_end] run data merge entity @s {Motion:[-0.25d,0d,0d]}
tag @s[type=minecart,tag=delay_west_end,nbt={Invulnerable:0b}] add already_departed
tag @s[type=minecart,tag=delay_west_end,nbt={Invulnerable:0b}] remove psd_mode

# subway control loop function (north)
execute as @s[type=minecart,tag=delay_north] run data merge entity @s {Motion:[0d,0d,0d]}
tag @s[type=minecart,tag=delay_north,scores={ftcarttimer=1},nbt={Motion:[0d,0d,0d]}] add delay_north_end
tag @s[type=minecart,tag=delay_north_end] remove delay_north
tag @s[type=minecart,tag=delay_north_end,scores={ftcarttimer=0}] remove delay_north_end
execute as @s[type=minecart,tag=delay_north_end] run data merge entity @s {Motion:[0d,0d,-0.25d]}
tag @s[type=minecart,tag=delay_north_end,nbt={Invulnerable:0b}] add already_departed
tag @s[type=minecart,tag=delay_north_end,nbt={Invulnerable:0b}] remove psd_mode

# minecart auto-cleaning mechanism - basic conditions
execute as @s[type=minecart,tag=already_departed] run tag @s add to_be_removed
execute as @s[type=minecart,tag=already_departed,tag=!psd_mode] at @s if entity @e[type=!minecart,limit=1,distance=..1] run tag @s remove to_be_removed
execute as @s[type=minecart,tag=already_departed,tag=psd_mode] at @s if entity @p[distance=..4] run tag @s remove to_be_removed

# minecart auto-cleaning mechanism - do not apply to BulletCarts (v1-v2) which are in high-speed mode & currently carrying a player.
#tag @s[tag=bulletcart,type=minecart] remove to_be_removed
#tag @s[tag=bcartv2,type=minecart] remove to_be_removed
tag @s[tag=ftbc_suspended_mode,type=minecart] remove to_be_removed
execute as @s[tag=to_be_removed,tag=bulletcart,type=minecart] at @s if entity @p[distance=..30,nbt={RootVehicle:{Entity:{id:"minecraft:minecart"}}}] run tag @s remove to_be_removed
execute as @s[tag=to_be_removed,tag=bcartv2,type=minecart] at @s if entity @p[distance=..30,nbt={RootVehicle:{Entity:{id:"minecraft:minecart"}}}] run tag @s remove to_be_removed

# minecart auto-cleaning mechanism - do not apply to derailed debug BulletCarts that has not shown the message yet.
tag @s[tag=ftbc_pending_for_debug_derail_msg,type=minecart] remove to_be_removed

# minecart auto-cleaning mechanism - the removal process
execute at @s[type=minecart,tag=to_be_removed] run playsound minecraft:entity.player.attack.crit block @a ~ ~ ~ 0.5
kill @s[type=minecart,tag=to_be_removed]

# minecart timer countdown
scoreboard players remove @s[type=minecart,scores={ftcarttimer=1..}] ftcarttimer 1
