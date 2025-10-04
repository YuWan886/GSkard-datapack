
execute if entity @s[team=red] run scoreboard players set 红队 xianjin_sunhaoguodu 0
execute if entity @s[team=blue] run scoreboard players set 蓝队 xianjin_sunhaoguodu 0

scoreboard players set #system kardCount 2
scoreboard players operation @s kardCount /= #system kardCount
scoreboard players reset #system kardCount

tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<损耗过度>",color: "dark_aqua",hover_event:{action:"show_text",value:[{text: "条件：敌方任意玩家使用",color:"gray",italic:false},{text: "基础牌",color:"blue",italic:false},{text: "或",color:"gray",italic:false},{text: "军团牌",color:"dark_green",italic:false},{text: "时",color:"gray",italic:false},{text: "\n触发：使其",color:"gray",italic:false},{text: "当前费用减半",color: "red",italic:false}]}}]
execute as @a at @s run playsound minecraft:bra player @s ~ ~ ~ 100 1
