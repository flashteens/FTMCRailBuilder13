# datapack enable "file/FTMC Speedometer"
scoreboard objectives setdisplay sidebar CurrentSpeed
scoreboard players reset #ftmc_speedometer_disabled CurrentSpeed
tellraw @a {"text":"Speedometer has been enabled.\n已開啟測速功能。","color":"green","bold":true}