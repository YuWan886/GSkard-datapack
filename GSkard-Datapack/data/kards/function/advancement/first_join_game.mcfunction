tp @s 59 251 -26 -90 90
spawnpoint @s 59 226 -26 -90
gamemode spectator @s
summon minecraft:firework_rocket ~ ~ ~
tag @s add Un_Ready
effect clear @s
team join First @s
tellraw @a [{selector:"@s"},{text: "达成了进度",color:"white"},{text: "[你管这叫卡牌对战?]",color:"green",hover_event:{action:"show_text",value:{text:"你管这叫卡牌对战?\n首次进入GSkard",color:"green"}}}]

execute at @s run playsound minecraft:entity.player.levelup master @s
dialog show @s kards:first_join/1

