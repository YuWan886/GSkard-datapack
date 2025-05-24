execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[施法小鬼]",color:"dark_aqua",hover_event:{action:"show_text",value:"条件：敌方任意玩家使用法术牌时\n触发：在其脚下召唤一只小僵尸"}}]
execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "?????",color:"dark_aqua"}]

execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[施法小鬼]",color:"dark_aqua",hover_event:{action:"show_text",value:"条件：敌方任意玩家使用法术牌时\n触发：在其脚下召唤一只小僵尸"}}]
execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "?????",color:"dark_aqua"}]

#红
execute if entity @s[team=red] run scoreboard players set 蓝队 xianjin_shifaxiaogui 1
#蓝
execute if entity @s[team=blue] run scoreboard players set 红队 xianjin_shifaxiaogui 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_shifaxiaogui kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1