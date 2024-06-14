# Refresh another timer for resetting offline players every second.
function ftmc:xlib/speedmonitor/reset

# Initialize individual values for every new player
execute as @a[tag=!ftmc_sm_hasinit] at @s run function ftmc:xlib/speedmonitor/init_local

# Prevent online users' values from being removed by the resetting mechanism.
execute as @a[scores={ftmc_sm_timer=1..}] at @s run scoreboard players operation @s CurrentSpeed = @s ftmc_sm_dc

# Update the current displaying speed of a player for each 1/5 second (4 ticks).
execute as @a[scores={ftmc_sm_timer=..0}] at @s run function ftmc:xlib/speedmonitor/display_core

# Player timer countdown
scoreboard players remove @a ftmc_sm_timer 1
