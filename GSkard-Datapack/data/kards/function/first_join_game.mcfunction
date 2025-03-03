tp @s 59 226 -26 -90 0
summon minecraft:firework_rocket ~ ~ ~
effect clear @s
team join First @s
tellraw @a [{text:"欢迎",color:"gold",bold:true},{selector:"@s",color:"white"},{text:"首次进入游戏",color:"gold"}]
execute if score system status matches 0 run team join lobby @s
execute unless score system status matches 0 run team join Spectator @s
execute unless score system status matches 0 run gamemode spectator @s
execute unless score system status matches 0 run tp @s @r[gamemode=adventure]
tellraw @s {text:"---------------------------------------------",color:"gold",bold:true}
tellraw @s {text:"                     欢迎来到申必小游戏",color:"green",bold:true}
tellraw @s {text:"                                             ",color:"gold",bold:true}
tellraw @s {text:"                          GSkard",color:"red",bold:true}
tellraw @s {text:"                                             ",color:"gold",bold:true}
tellraw @s {text:"      右侧房屋为主要大厅 左侧球场为牌友自制的内置小游戏",color:"gray",bold:true}
tellraw @s {text:"---------------------------------------------",color:"gold",bold:true}
tellraw @s [{text:"              点我打开GSkard牌库大全及新手教程~                 ",color:"gold",bold:true,click_event:{action:"open_url","url":"https://docs.qq.com/doc/DY0RiSmROZVRaRmRY"},hover_event:{action:"show_text",value:"地图牌库大全"}}]
tellraw @s {text:"---------------------------------------------",color:"gold",bold:true}
execute at @s run playsound minecraft:entity.player.levelup master @s