execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[遥远的桥]",color:"dark_aqua",hover_event:{action:"show_text",value:"条件：敌方回合结束时\n触发：清除友方区域所有敌对生物"}}]
execute if entity @s[team=red] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "?????",color:"dark_aqua"}]

execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=blue] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[遥远的桥]",color:"dark_aqua",hover_event:{action:"show_text",value:"条件：敌方回合结束时\n触发：清除友方区域所有敌对生物"}}]
execute if entity @s[team=blue] if score @s pingbi matches 0 run tellraw @a[team=red] [{selector:"@s"},{text: "使用了",color:"gold"},{text: "?????",color:"dark_aqua"}]

#红
execute if entity @s[team=red] run scoreboard players set 蓝队 xianjin_yaoyuandeqiao 2
#蓝
execute if entity @s[team=blue] run scoreboard players set 红队 xianjin_yaoyuandeqiao 2
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_yaoyuandeqiao kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1