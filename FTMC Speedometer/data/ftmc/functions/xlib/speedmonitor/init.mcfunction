scoreboard objectives add ftmc_sm_timer dummy

scoreboard objectives add ftmc_sm_x1 dummy
scoreboard objectives add ftmc_sm_y1 dummy
scoreboard objectives add ftmc_sm_z1 dummy
scoreboard objectives add ftmc_sm_x2 dummy
scoreboard objectives add ftmc_sm_y2 dummy
scoreboard objectives add ftmc_sm_z2 dummy
scoreboard objectives add ftmc_sm_dx dummy
scoreboard objectives add ftmc_sm_dy dummy
scoreboard objectives add ftmc_sm_dz dummy

# temp register for abs(dx), abs(dy), abs(dz)
scoreboard objectives add ftmc_sm_dt dummy

# temp register for max function
scoreboard objectives add ftmc_sm_dm dummy

# temp register for sum function
scoreboard objectives add ftmc_sm_ds dummy

# temp register for CurrentSpeed during calculation
scoreboard objectives add ftmc_sm_dc dummy

# temp register for constants
scoreboard objectives add ftmc_sm_const dummy

# the value to be displayed
scoreboard objectives add CurrentSpeed dummy

scoreboard objectives setdisplay sidebar CurrentSpeed