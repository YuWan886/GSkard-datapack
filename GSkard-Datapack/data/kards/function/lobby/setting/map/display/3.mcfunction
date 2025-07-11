data merge entity @e[tag=map,type=block_display,limit=1] {transformation:{right_rotation:[0.41f,0.41f,0.41f,-0.71f]},interpolation_duration:20}
execute as @e[type=block_display,tag=droll] run data merge entity @s {transformation:{right_rotation:[0.41f,0.41f,0.41f,-0.71f]},interpolation_duration:20}
schedule function kards:lobby/setting/map/display/4 20t
