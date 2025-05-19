execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.paiku.fashu.jieshi.2.12",color:"dark_aqua",hover_event:{action:"show_text","value":"条件：敌方任意玩家使用神迹牌时\n触发：将友方敌对怪物传送至敌方场地"}}]
execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.template.4",color:"dark_aqua"}]

execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.paiku.fashu.jieshi.2.12",color:"dark_aqua",hover_event:{action:"show_text","value":"条件：敌方任意玩家使用神迹牌时\n触发：将友方敌对怪物传送至敌方场地"}}]
execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.template.4",color:"dark_aqua"}]

#红
execute if entity @s[team=red] run scoreboard players set 蓝队 xianjin_qianjunyifa 1
#蓝
execute if entity @s[team=blue] run scoreboard players set 红队 xianjin_qianjunyifa 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_qianjunyifa kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1