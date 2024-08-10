gamerule commandBlockOutput false
gamerule logAdminCommands false

scoreboard objectives add bulletcartew dummy
scoreboard objectives add bulletcartns dummy
scoreboard objectives add ftbcspeed dummy
scoreboard objectives add ftbctargetspeed dummy
scoreboard objectives add ftbcmaxspeed dummy
scoreboard objectives add ftbc_reg_div dummy
scoreboard objectives add ftbc_reg_mod dummy
scoreboard objectives add ftbc_reg_const dummy
scoreboard objectives add ftbc_sl_delta dummy
scoreboard objectives add ftbc_sl_deltaold dummy
scoreboard objectives add ftbc_funcid dummy
scoreboard objectives add ftbc_funcid_old dummy
scoreboard objectives add ftbc_reg_display dummy

# Minecart Acceleration Control Parameters
scoreboard objectives add ftbc_accel_ntick dummy
scoreboard objectives add ftbc_accelperiod dummy

# For By-world Customization Configurations
scoreboard objectives add BCartMaxSpeed dummy
# Note: 'ftbcmaxspeed' as defined above is an internal value. Please adjust the max speed from the value 'BCartMaxSpeed' instead.

# For By-cart Customization Configurations (deprecated)
scoreboard objectives add BCartConfigID dummy

# For Debug Display only (current speed, target speed, target speed without considering maxspeed config, current x, current z, target distance, acceleration)
scoreboard objectives add ftbc_debug_cs dummy
scoreboard objectives add ftbc_debug_ts dummy
scoreboard objectives add ftbc_debug_ts0 dummy
scoreboard objectives add ftbc_debug_x0 dummy
scoreboard objectives add ftbc_debug_z0 dummy
scoreboard objectives add ftbc_debug_d dummy
scoreboard objectives add ftbc_debug_a dummy

# Extra register variables for temporary calculations only
scoreboard objectives add ftbc_reg_0 dummy
scoreboard objectives add ftbc_reg_1 dummy
scoreboard objectives add ftbc_reg_2 dummy
scoreboard objectives add ftbc_reg_3 dummy
scoreboard objectives add ftbc_reg_4 dummy
scoreboard objectives add ftbc_reg_5 dummy
scoreboard objectives add ftbc_reg_6 dummy
scoreboard objectives add ftbc_reg_7 dummy
scoreboard objectives add ftbc_reg_8 dummy
scoreboard objectives add ftbc_reg_9 dummy

# [Since v2.5] temporary values to allow recursion for single-tick precise detection during high-speed operation
# ftbc_recur_tpspd (teleportation speed value): Speed parameter to be teleported during a single recursive iteration
# ftbc_recur_itspd (iteration speed value): The value to be decreased for each iteration until it turns to zero as the end condition
# ftbc_recur_state: Only used in the function "bulletcart_engine_recur_next" to determine which axis (X/Y/Z) is under adjustment before running the next iteration
# ftbc_recur_tpdmx, ftbc_recur_tpdmz (for micro teleportation): Only used for the first iteration, which may involve smaller teleportation distances (<72km/h)
# ftbc_recur_count: Number of recursive iterations completed within the same tick
scoreboard objectives add ftbc_recur_tpdx dummy
scoreboard objectives add ftbc_recur_tpdy dummy
scoreboard objectives add ftbc_recur_tpdz dummy
scoreboard objectives add ftbc_recur_tpdmx dummy
scoreboard objectives add ftbc_recur_tpdmz dummy
scoreboard objectives add ftbc_recur_tpspd dummy
scoreboard objectives add ftbc_recur_itspd dummy
scoreboard objectives add ftbc_recur_state dummy
scoreboard objectives add ftbc_recur_count dummy

# Register variables for PaperMC 1.16+ teleportation fix only
function ftmc:bcartv2/engine/fixtp/init_scores
