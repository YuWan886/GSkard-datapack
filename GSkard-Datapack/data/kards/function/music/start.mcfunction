stopsound @a block
execute at @e[limit=1,tag=red_marker_1] run playsound music block @a ~ ~ ~ 0 1 0.5
tellraw @a {"text":"[TIPS]音乐音量可通过设置方块音量以调整",color:"dark_gray"}
schedule function kards:music/start 300s replace 