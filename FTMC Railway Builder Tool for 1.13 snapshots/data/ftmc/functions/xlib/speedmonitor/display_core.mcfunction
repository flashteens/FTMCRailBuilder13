execute store result score @s ftmc_sm_x2 run data get entity @s Pos[0] 18
execute store result score @s ftmc_sm_y2 run data get entity @s Pos[1] 18
execute store result score @s ftmc_sm_z2 run data get entity @s Pos[2] 18

scoreboard players operation @s ftmc_sm_dx = @s ftmc_sm_x2
scoreboard players operation @s ftmc_sm_dy = @s ftmc_sm_y2
scoreboard players operation @s ftmc_sm_dz = @s ftmc_sm_z2

scoreboard players operation @s ftmc_sm_dx -= @s ftmc_sm_x1
scoreboard players operation @s ftmc_sm_dy -= @s ftmc_sm_y1
scoreboard players operation @s ftmc_sm_dz -= @s ftmc_sm_z1

scoreboard players operation @s ftmc_sm_x1 = @s ftmc_sm_x2
scoreboard players operation @s ftmc_sm_y1 = @s ftmc_sm_y2
scoreboard players operation @s ftmc_sm_z1 = @s ftmc_sm_z2


# Calculate the approximate current speed with the following algorithm:
# dmax = max(dx, dy, dz), where dx,dy,dz >= 0
# dsum = (dx + dy + dz) / sqrt(2)
# CurrentSpeed = max(dmax, dsum)
# Verified by "plot max(x, 10, (x+10)/sqrt(2)), sqrt(x*x+10*10) from x=0 to 50" on Wolfram Alpha

# Replace ftmc_sm_dx, ftmc_sm_dy, ftmc_sm_dz with their own absolute values.
scoreboard players set @s ftmc_sm_const -1
scoreboard players operation @s ftmc_sm_dt = @s ftmc_sm_dx
scoreboard players operation @s ftmc_sm_dt *= @s ftmc_sm_const
scoreboard players operation @s ftmc_sm_dx > @s ftmc_sm_dt
scoreboard players operation @s ftmc_sm_dt = @s ftmc_sm_dy
scoreboard players operation @s ftmc_sm_dt *= @s ftmc_sm_const
scoreboard players operation @s ftmc_sm_dy > @s ftmc_sm_dt
scoreboard players operation @s ftmc_sm_dt = @s ftmc_sm_dz
scoreboard players operation @s ftmc_sm_dt *= @s ftmc_sm_const
scoreboard players operation @s ftmc_sm_dz > @s ftmc_sm_dt

# Calculate dmax
scoreboard players operation @s ftmc_sm_dm = @s ftmc_sm_dx
scoreboard players operation @s ftmc_sm_dm > @s ftmc_sm_dy
scoreboard players operation @s ftmc_sm_dm > @s ftmc_sm_dz

# Calculate dsum (where 707 below approximates 1000 / sqrt(2).)
scoreboard players operation @s ftmc_sm_ds = @s ftmc_sm_dx
scoreboard players operation @s ftmc_sm_ds += @s ftmc_sm_dy
scoreboard players operation @s ftmc_sm_ds += @s ftmc_sm_dz
scoreboard players set @s ftmc_sm_const 707
scoreboard players operation @s ftmc_sm_ds *= @s ftmc_sm_const
scoreboard players set @s ftmc_sm_const 1000
scoreboard players operation @s ftmc_sm_ds /= @s ftmc_sm_const

# Calculate the final result
scoreboard players operation @s ftmc_sm_dc = @s ftmc_sm_dm
scoreboard players operation @s ftmc_sm_dc > @s ftmc_sm_ds

# Display the result
scoreboard players operation @s CurrentSpeed = @s ftmc_sm_dc

# Finally reset the waiting time (in ticks) before the next call.
scoreboard players set @s ftmc_sm_timer 4