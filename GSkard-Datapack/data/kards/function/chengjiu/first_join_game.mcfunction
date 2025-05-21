tp @s 94 256 -26 90 0
spawnpoint @s 59 226 -26 -90
gamemode adventure @s
summon minecraft:firework_rocket ~ ~ ~
effect clear @s
team join First @s
tellraw @a [{selector:"@s"},{translate: "chengjiu.first_join_game.1",color:"white"},{translate: "chengjiu.first_join_game.2",color:"green",hover_event:{action:"show_text","value":"首次进入GSkard"}}]
execute if score #system GameStatus matches 0 run team join lobby @s
execute unless score #system GameStatus matches 0 run team join Spectator @s
execute unless score #system GameStatus matches 0 run gamemode spectator @s
execute unless score #system GameStatus matches 0 run tp @s @r[gamemode=adventure]
execute at @s run playsound minecraft:entity.player.levelup master @s