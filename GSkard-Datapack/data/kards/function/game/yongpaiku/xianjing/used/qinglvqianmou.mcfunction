execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[轻虑浅谋]",color:"dark_aqua",hover_event:{action:"show_text",value:"条件：敌方回合结束时\n触发：敌方玩家每用1张牌就对自己造成0.5♥伤害"}}]
execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "?????",color:"dark_aqua"}]

execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[轻虑浅谋]",color:"dark_aqua",hover_event:{action:"show_text",value:"条件：敌方回合结束时\n触发：敌方玩家每用1张牌就对自己造成0.5♥伤害"}}]
execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "?????",color:"dark_aqua"}]


function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] run scoreboard players set 蓝队 xianjin_qinglvqianmou 1

execute if entity @s[team=blue] run scoreboard players set 红队 xianjin_qinglvqianmou 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_qinglvqianmou kardCount
