data merge entity @e[tag=map,type=block_display,limit=1] {transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f]},interpolation_duration:20}
#春日影旋转
execute as @e[type=block_display,tag=droll] run data merge entity @s {transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f]},interpolation_duration:20}
schedule function kards:lobby/setting/map/display/1 20t
