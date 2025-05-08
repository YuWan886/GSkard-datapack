stopsound @s
execute at @s run playsound minecraft:ui.button.click player @s
execute at @s run playsound minecraft:kards_music player @s ~ ~ ~ 100 1
scoreboard players set @s music_kards 0
tellraw @s [{translate: "music.kards.1",color: "green"},{translate: "music.kards.2",color: "gold"},{translate: "music.kards.3",color: "gray"},{translate: "music.kards.4",color: "green"}]