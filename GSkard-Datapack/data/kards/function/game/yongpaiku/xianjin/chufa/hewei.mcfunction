execute if entity @s[team=red] run kill @e[type=!player,tag=!tuteng,team=red,type=!creaking]
execute if entity @s[team=blue] run kill @e[type=!player,tag=!tuteng,team=blue,type=!creaking]

execute if entity @s[team=red] run scoreboard players set 红队 xianjin_hewei 0
execute if entity @s[team=blue] run scoreboard players set 蓝队 xianjin_hewei 0

tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<合围>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时清除使用该陷阱的队伍的场上所有敌对怪物"}}]
execute as @a at @s run playsound minecraft:wilhelm_scream player @s ~ ~ ~ 100 1