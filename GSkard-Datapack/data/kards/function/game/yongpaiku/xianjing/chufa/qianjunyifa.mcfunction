
#千钧一发

execute if entity @s[team=red] at @e[tag=red_marker_7,limit=1] positioned ~ 1 ~ run tp @e[team=red,tag=!tuteng,tag=!random_creaking,type=#kards:mob] ~ 1 ~
execute if entity @s[team=red] at @e[tag=red_marker_7,limit=1] run team join blue @e[team=red,tag=!tuteng,tag=!random_creaking,type=#kards:mob,distance=..5]

execute if entity @s[team=blue] at @e[tag=blue_marker_7,limit=1] run tp @e[team=blue,tag=!tuteng,tag=!random_creaking,type=#kards:mob] ~ 1 ~
execute if entity @s[team=blue] at @e[tag=blue_marker_7,limit=1] positioned ~ 1 ~ run team join red @e[team=blue,tag=!tuteng,tag=!random_creaking,type=#kards:mob,distance=..5]

execute as @e[type=#kards:mob] run data modify entity @s NoAI set value 0b
execute as @e[type=#kards:mob] run data modify entity @s Invulnerable set value 0b

execute if entity @s[team=red] run scoreboard players set 红队 xianjin_qianjunyifa 0
execute if entity @s[team=blue] run scoreboard players set 蓝队 xianjin_qianjunyifa 0

execute as @a at @s run playsound minecraft:whatfall master @s ~ ~ ~ 100 1
tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<千钧一发>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时让使用该陷阱牌队伍场地所有敌对怪物传送至触发者队伍场地"}}]