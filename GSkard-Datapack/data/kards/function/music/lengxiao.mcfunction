stopsound @s
execute at @s run playsound minecraft:ui.button.click player @s
execute at @s run playsound minecraft:lengxiao_music player @s ~ ~ ~ 100 1
scoreboard players set @s music_lengxiao 0
tellraw @s [{"text": "===========================================\n","color": "green"},{"text": "正在为你播放音乐~\n《Alexandra Stan、Manilla Maniacs - All My People》\n","color": "gold"},{"text": "===========================================","color": "green"}]