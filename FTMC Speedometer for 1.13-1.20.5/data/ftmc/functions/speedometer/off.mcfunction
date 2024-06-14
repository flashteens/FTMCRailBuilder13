# datapack disable "file/FTMC Speedometer"
scoreboard objectives setdisplay sidebar
scoreboard players set #ftmc_speedometer_disabled CurrentSpeed 1
tellraw @a {"text":"Speedometer has been disabled.\n已關閉測速功能。","color":"gold","bold":true}