tp @s 94 256 -26 90 0
spawnpoint @s 59 226 -26 -90
gamemode adventure @s
summon minecraft:firework_rocket ~ ~ ~
effect clear @s
team join First @s
tellraw @a [{selector:"@s"},{text: "达成了进度",color:"white"},{text: "[你管这叫卡牌对战?]",color:"green",hover_event:{action:"show_text",value:{text:"你管这叫卡牌对战?\n首次进入GSkard",color:"green"}}}]
execute if score #system GameStatus matches 0 run team join lobby @s
execute unless score #system GameStatus matches 0 run team join Spectator @s
execute unless score #system GameStatus matches 0 run gamemode spectator @s
execute unless score #system GameStatus matches 0 run tp @s @r[gamemode=adventure]
execute at @s run playsound minecraft:entity.player.levelup master @s
dialog show @s kards:first_join
