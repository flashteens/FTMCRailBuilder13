# datapack disable "file/FTMC Speedometer"
scoreboard objectives setdisplay sidebar
scoreboard players set #ftmc_speedometer_disabled ftmc_sm_config 1
tellraw @a {"text":"Speedometer has been hidden from the sidebar.\n已隱藏畫面側邊的玩家時速表。","color":"gold","bold":true}
