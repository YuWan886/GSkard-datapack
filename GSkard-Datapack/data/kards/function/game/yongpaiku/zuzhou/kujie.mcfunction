execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[枯竭]",color:"dark_gray",hover_event:{action:"show_text","value":"下回合 敌方使用牌后额外扣一点点数(不可叠加)"}}]

#红
execute if entity @s[team=red] run scoreboard players set @a[team=blue] kujie 2
#蓝
execute if entity @s[team=blue] run scoreboard players set @a[team=red] kujie 2
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_kujie kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1