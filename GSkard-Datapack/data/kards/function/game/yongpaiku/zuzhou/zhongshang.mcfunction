execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[重伤]",color:"dark_gray",hover_event:{action:"show_text",value:"造成3♥真实伤害且禁疗至下回合结束"}}]
tag @s add zhongshang_damage
#红
execute if entity @s[team=red] as @a[gamemode=adventure,team=blue] run damage @s 6 kards:zhongshang by @p[team=red,tag=zhongshang_damage]
execute if entity @s[team=red] run scoreboard players set @a[gamemode=adventure,team=blue] ZhongShang_Round 2
#蓝
execute if entity @s[team=blue] as @a[gamemode=adventure,team=red] run damage @s 6 kards:zhongshang by @p[team=blue,tag=zhongshang_damage]
execute if entity @s[team=blue] run scoreboard players set @a[gamemode=adventure,team=red] ZhongShang_Round 2

tag @s remove zhongshang_damage
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zhongshang kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
