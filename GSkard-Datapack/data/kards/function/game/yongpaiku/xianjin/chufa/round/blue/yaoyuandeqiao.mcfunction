scoreboard players reset 蓝队 xianjin_yaoyuandeqiao

kill @e[type=!player,tag=!tuteng,team=red,type=!creaking]
tellraw @a [{text: "红队",color:"red"},{text: "触发了",color: "gray"},{text: "<遥远的桥>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时清除使用该陷阱的队伍的场上所有敌对怪物"}}]
execute as @a at @s run playsound minecraft:wilhelm_scream player @s ~ ~ ~ 100 1