
scoreboard players reset 红队 xianjin_yaoyuandeqiao

kill @e[type=!player,tag=!tuteng,team=blue,type=!creaking]
tellraw @a [{translate: "kards.function.game.end.win.blue_win.2", fallback: "蓝队",color:"blue"},{translate: "kards.function.game.yongpaiku.xianjing.chufa.hewei.1", fallback: "触发了",color: "gray"},{translate: "kards.function.game.yongpaiku.xianjing.chufa.round.blue.yaoyuandeqiao.1", fallback: "<遥远的桥>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时清除使用该陷阱的队伍的场上所有敌对怪物"}}]
execute as @a at @s run playsound minecraft:wilhelm_scream player @s ~ ~ ~ 100 1