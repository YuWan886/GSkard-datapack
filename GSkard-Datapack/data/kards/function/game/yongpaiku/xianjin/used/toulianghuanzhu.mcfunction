execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[偷梁换柱]",color:"dark_aqua",hover_event:{action:"show_text",value:"条件：敌方回合结束时\n触发：记录敌方一名K点最多的玩家的K点 在下回合时使其均分给我方所有玩家 每名玩家最多得到6点(不取余数)"}}]
execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "?????",color:"dark_aqua"}]
execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[偷梁换柱]",color:"dark_aqua",hover_event:{action:"show_text",value:"条件：敌方回合结束时\n触发：记录敌方一名K点最多的玩家的K点 在下回合时使其均分给我方所有玩家 每名玩家最多得到6点(不取余数)"}}]
execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "?????",color:"dark_aqua"}]
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] run scoreboard players set 蓝队 xianjin_toulianghuanzhu 1
execute if entity @s[team=blue] run scoreboard players set 红队 xianjin_toulianghuanzhu 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_toulianghuanzhu kardCount
