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

# Register variables for PaperMC 1.16+ teleportation fix only
function ftmc:bcartv2/engine/fixtp/init_scores
