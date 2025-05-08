stopsound @s
execute at @s run playsound minecraft:ui.button.click player @s
execute at @s run playsound minecraft:lengxiao_music player @s ~ ~ ~ 100 1
scoreboard players set @s music_lengxiao 0
tellraw @s [{translate: "music.lengxiao.1",color: "green"},{translate: "music.lengxiao.2",color: "gold"},{translate: "music.lengxiao.3",color: "green"}]