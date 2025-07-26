# datapack enable "file/FTMC Speedometer"
scoreboard objectives setdisplay sidebar CurrentSpeed
scoreboard players reset #ftmc_speedometer_disabled ftmc_sm_config
tellraw @a {"text":"Speedometer has been enabled on the sidebar.\n已啟用畫面側邊的玩家時速表。","color":"green","bold":true}
