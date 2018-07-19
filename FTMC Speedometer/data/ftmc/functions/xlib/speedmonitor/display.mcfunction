# Initialize individual values for every new player
execute as @a[tag=!ftmc_sm_hasinit] at @s run function ftmc:xlib/speedmonitor/init_local

# Update the current displaying speed of a player for each 1/5 second (4 ticks).
execute as @a[scores={ftmc_sm_timer=..0}] at @s run function ftmc:xlib/speedmonitor/display_core

# Player timer countdown
scoreboard players remove @a ftmc_sm_timer 1