execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[宰鸡敬猴]",color:"dark_purple",hover_event:{action:"show_text",value:"杀死敌方一个图腾"}}]
function kards:game/yongpaiku/xianjin/jiance/fashujiance
scoreboard players operation @s kardCount -= #kard_zaijijinhou kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air



#红
execute if entity @s[team=red] run kill @e[tag=tuteng,limit=1,team=blue,sort=random]
#蓝
execute if entity @s[team=blue] run kill @e[tag=tuteng,limit=1,team=red,sort=random]

