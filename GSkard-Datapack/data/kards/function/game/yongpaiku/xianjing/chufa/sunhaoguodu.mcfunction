
execute if entity @s[team=red] run scoreboard players set 红队 xianjin_sunhaoguodu 0
execute if entity @s[team=blue] run scoreboard players set 蓝队 xianjin_sunhaoguodu 0

scoreboard players set #system kardCount 2
scoreboard players operation @s kardCount /= #system kardCount
scoreboard players reset #system kardCount

tellraw @a [{selector: "@s"},{translate: "kards.function.game.yongpaiku.xianjing.chufa.hewei.1", fallback: "触发了",color: "gray"},{translate: "kards.function.game.yongpaiku.xianjing.chufa.sunhaoguodu.1", fallback: "<损耗过度>",color: "dark_aqua",hover_event:{action:"show_text",value:[{translate: "json.kards.dialog.paiku.xianjing.hewei.665", fallback: "条件：敌方任意玩家使用",color:"gray",italic:false},{translate: "kards.function.game.paiku.xianjing.hewei.1", fallback: "基础牌",color:"blue",italic:false},{translate: "kards.function.game.paiku.xianjing.hewei.2", fallback: "或",color:"gray",italic:false},{translate: "json.kards.dialog.paiku.main.116", fallback: "军团牌",color:"dark_green",italic:false},{translate: "kards.function.game.paiku.xianjing.hewei.3", fallback: "时",color:"gray",italic:false},{translate: "kards.function.game.yongpaiku.xianjing.chufa.sunhaoguodu.2", fallback: "\n触发：使其",color:"gray",italic:false},{translate: "kards.function.game.paiku.xianjing.sunhaoguodu.1", fallback: "当前费用减半",color: "red",italic:false}]}}]
execute as @a at @s run playsound minecraft:bra player @s ~ ~ ~ 100 1
