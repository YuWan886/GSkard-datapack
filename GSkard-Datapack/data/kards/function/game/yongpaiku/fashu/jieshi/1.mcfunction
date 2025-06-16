execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[揭示]",color:"dark_purple",hover_event:{action:"show_text",value:"揭示敌方所有陷阱"}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_jieshi kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air


#红
execute if entity @s[team=red] run function kards:game/yongpaiku/fashu/jieshi/2
#蓝
execute if entity @s[team=blue] run function kards:game/yongpaiku/fashu/jieshi/3
#
