execute if entity @s[tag=!ftbc_emerbrake] if block ~ ~-1 ~ green_concrete run function ftmc:bcartv2/engine/sensor/add50
execute if entity @s[tag=!ftbc_emerbrake] if block ~ ~-1 ~ lime_concrete run function ftmc:bcartv2/engine/sensor/add10
execute if entity @s[tag=!ftbc_emerbrake] if block ~ ~-1 ~ yellow_concrete run function ftmc:bcartv2/engine/sensor/sub10
execute if entity @s[tag=!ftbc_emerbrake] if block ~ ~-1 ~ orange_concrete run function ftmc:bcartv2/engine/sensor/sub50

execute if entity @s[tag=!ftbc_emerbrake] if block ~ ~-1 ~ green_concrete_powder run function ftmc:bcartv2/engine/sensor/add25
execute if entity @s[tag=!ftbc_emerbrake] if block ~ ~-1 ~ lime_concrete_powder run function ftmc:bcartv2/engine/sensor/add5
execute if entity @s[tag=!ftbc_emerbrake] if block ~ ~-1 ~ yellow_concrete_powder run function ftmc:bcartv2/engine/sensor/sub5
execute if entity @s[tag=!ftbc_emerbrake] if block ~ ~-1 ~ orange_concrete_powder run function ftmc:bcartv2/engine/sensor/sub25

execute if entity @s[tag=!ftbc_emerbrake] if block ~ ~-1 ~ red_concrete run function ftmc:bcartv2/engine/sensor/emerbrake
execute if entity @s[tag=!ftbc_emerbrake] if block ~ ~-1 ~ red_concrete_powder run function ftmc:bcartv2/engine/sensor/emerbrake
