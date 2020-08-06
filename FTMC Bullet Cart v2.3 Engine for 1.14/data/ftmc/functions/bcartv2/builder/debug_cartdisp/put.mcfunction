setblock ~ ~ ~ minecraft:air
execute if entity @e[type=minecart,distance=..3] run title @p[distance=..10] actionbar {"text":"Cannot generate the cart!","color":"red","bold":true}
execute unless entity @e[type=minecart,distance=..3] run playsound minecraft:block.redstone_torch.burnout block @a ~ ~ ~ 1 0.5
execute unless entity @e[type=minecart,distance=..3] run summon minecart ~ ~0.5 ~ {Tags:["show_speed_limit","debug"],CustomDisplayTile:1,DisplayState:{Name:"structure_block"},CustomNameVisible:1,CustomName:"{\"text\":\"Debug BulletCart\",\"color\":\"aqua\"}"}
