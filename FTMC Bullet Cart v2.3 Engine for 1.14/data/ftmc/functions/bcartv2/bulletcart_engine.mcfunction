# initialize the max speed settings (global values)
function ftmc:bcartv2/engine/maxspeed_init_global

# Run BulletCart functions by individual minecarts
execute as @e[type=minecart] run function ftmc:bcartv2/bulletcart_engine_inner
