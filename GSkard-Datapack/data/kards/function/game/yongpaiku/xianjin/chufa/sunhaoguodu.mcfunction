execute if entity @s[team=red] run scoreboard players set 红队 xianjin_sunhaoguodu 0
execute if entity @s[team=blue] run scoreboard players set 蓝队 xianjin_sunhaoguodu 0

scoreboard players set #system kardCount 2
scoreboard players operation @s kardCount /= #system kardCount
scoreboard players reset #system kardCount

tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<损耗过度>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时将当前费用减半"}}]
execute as @a at @s run playsound minecraft:bra player @s ~ ~ ~ 100 1
