# Display speed limit changes. (Actual speed limit = ftbctargetspeed + 29)
scoreboard players operation @s ftbc_reg_display = @s ftbctargetspeed
scoreboard players add @s ftbc_reg_display 29

execute as @s[scores={ftbc_sl_delta=1..}] at @s positioned ~ ~ ~ run title @p[distance=..1] actionbar ["",{"text":"Speed Limit: "},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_reg_display"},"bold":true,"color":"green"},{"text":" km/h","bold":true,"color":"green"}]

execute as @s[scores={ftbc_sl_delta=..-1,ftbc_reg_display=30..}] at @s positioned ~ ~ ~ run title @p[distance=..1] actionbar ["",{"text":"Speed Limit: "},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_reg_display"},"bold":true,"color":"gold"},{"text":" km/h","bold":true,"color":"gold"}]

execute as @s[scores={ftbc_sl_delta=..-1,ftbc_reg_display=..29}] at @s positioned ~ ~ ~ run title @p[distance=..1] actionbar ["",{"text":"Speed Limit: "},{"text":"under 30 km/h","bold":true,"color":"gold"}]

# Show an emergency brake message if a minecart starts emergency braking from 50+ km/h.
execute as @s[tag=ftbc_emerbrake,scores={ftbcspeed=21..}] at @s positioned ~ ~ ~ run title @p[distance=..1] actionbar ["",{"text":"Emergency Brake!","bold":true,"color":"red"}]