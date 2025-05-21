tp @s 59 226 -26 -90 0
summon minecraft:firework_rocket ~ ~ ~
effect clear @s
team join First @s
tellraw @a [{translate: "first_join_game.1",color:"gold",bold:true},{selector:"@s",color:"white"},{translate: "first_join_game.2",color:"gold"}]
execute if score #system GameStatus matches 0 run team join lobby @s
execute unless score #system GameStatus matches 0 run team join Spectator @s
execute unless score #system GameStatus matches 0 run gamemode spectator @s
execute unless score #system GameStatus matches 0 run tp @s @r[gamemode=adventure]
tellraw @s {translate: "first_join_game.3",color:"gold",bold:true}
tellraw @s {translate: "first_join_game.4",color:"green",bold:true}
tellraw @s {translate: "first_join_game.5",color:"gold",bold:true}
tellraw @s {translate: "first_join_game.6",color:"red",bold:true}
tellraw @s {translate: "first_join_game.5",color:"gold",bold:true}
tellraw @s {translate: "first_join_game.7",color:"gray",bold:true}
tellraw @s {translate: "first_join_game.3",color:"gold",bold:true}
tellraw @s [{translate: "first_join_game.8",color:"gold",bold:true,click_event:{action:"open_url","url":"https://docs.qq.com/doc/DY0RiSmROZVRaRmRY"},hover_event:{action:"show_text",value:"地图牌库大全"}}]
tellraw @s {translate: "first_join_game.3",color:"gold",bold:true}
execute at @s run playsound minecraft:entity.player.levelup master @s