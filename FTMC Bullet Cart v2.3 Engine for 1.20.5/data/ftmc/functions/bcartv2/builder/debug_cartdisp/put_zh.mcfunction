setblock ~ ~ ~ minecraft:air
execute if entity @e[type=minecart,distance=..3] run title @p[distance=..10] actionbar {"text":"無法產生礦車!","color":"red","bold":true}
execute unless entity @e[type=minecart,distance=..3] run playsound minecraft:block.redstone_torch.burnout block @a ~ ~ ~ 1 0.5
execute unless entity @e[type=minecart,distance=..3] run summon minecart ~ ~0.5 ~ {Tags:["show_speed_limit","debug","zh"],CustomDisplayTile:1,DisplayState:{Name:"structure_block"},CustomNameVisible:1,CustomName:"{\"text\":\"除錯專用子彈礦車\",\"color\":\"aqua\"}"}
