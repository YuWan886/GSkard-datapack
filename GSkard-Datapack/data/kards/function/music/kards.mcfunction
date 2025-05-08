stopsound @s
execute at @s run playsound minecraft:ui.button.click player @s
execute at @s run playsound minecraft:kards_music player @s ~ ~ ~ 100 1
scoreboard players set @s music_kards 0
tellraw @s [{"text": "=================\n","color": "green"},{"text": "正在为你播放音乐~\n","color": "gold"},{"text": "音频来自游戏《Kards》\n","color": "gray"},{"text": "=================","color": "green"}]