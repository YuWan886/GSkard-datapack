data merge entity @e[tag=map,type=block_display,limit=1] {transformation:{right_rotation:[0.58f,0.58f,0.58f,0.0f]},interpolation_duration:20}
execute as @e[type=block_display,tag=droll] run data merge entity @s {transformation:{right_rotation:[0.58f,0.58f,0.58f,0.0f]},interpolation_duration:20}
schedule function kards:lobby/setting/map/display/3 20t