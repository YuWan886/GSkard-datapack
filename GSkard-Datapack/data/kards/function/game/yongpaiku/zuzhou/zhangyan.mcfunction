execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[障眼]",color:"dark_gray",hover_event:{action:"show_text",value:"敌方玩家获得失明 持续20s"}}]
#红
execute if entity @s[team=red] run effect give @a[team=blue,gamemode=adventure] blindness 20 1 true
#蓝
execute if entity @s[team=blue] run effect give @a[team=red,gamemode=adventure] blindness 20 1 true
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zhangyan kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
