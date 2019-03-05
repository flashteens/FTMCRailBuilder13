# arg #0:  ftbc_debug_ts: Current speed limit (km/h).
# arg #1:  ftbc_debug_cs: Current speed (km/h), if the minecart is fully sped up by powered rails.
# returns: ftbc_reg_0:    The distance (m) for the minecart to reach the target speed, for acceleration +20 km/h/s or -20 km/h/s.

# Formula:
# ftbc_reg_0 = (ftbc_debug_cs / 3.6 + ftbc_debug_ts / 3.6) * time / 2
# where time(sec) = abs(ftbc_debug_cs - ftbc_debug_ts) / 20

# Step 1: ftbc_reg_1 = time(tick) = abs(ftbc_debug_cs - ftbc_debug_ts)
scoreboard players operation @s ftbc_reg_1 = @s ftbc_debug_cs
scoreboard players operation @s ftbc_reg_1 -= @s ftbc_debug_ts
scoreboard players set @s ftbc_reg_const -1
scoreboard players operation @s[scores={ftbc_reg_1=..-1}] ftbc_reg_1 *= @s ftbc_reg_const

# Step 2: ftbc_reg_0 = (ftbc_debug_cs + ftbc_debug_ts) / 3.6 * time(sec) / 2
# -> ftbc_reg_0 = (ftbc_debug_cs + ftbc_debug_ts) * time(tick) / (20 * 7.2)
scoreboard players operation @s ftbc_reg_0 = @s ftbc_debug_cs
scoreboard players operation @s ftbc_reg_0 += @s ftbc_debug_ts
scoreboard players operation @s ftbc_reg_0 *= @s ftbc_reg_1
scoreboard players set @s ftbc_reg_const 144
scoreboard players operation @s ftbc_reg_0 /= @s ftbc_reg_const

# The value ftbc_reg_0 is returned for using on the right next command.