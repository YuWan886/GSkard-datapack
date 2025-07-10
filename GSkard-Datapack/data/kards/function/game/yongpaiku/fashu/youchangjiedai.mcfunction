execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[有偿借贷]",color:"dark_purple",hover_event:{action:"show_text",value:"你获得12K 但-2Kmax"}}]
function kards:game/yongpaiku/xianjin/jiance/fashujiance
scoreboard players operation @s kardCount -= #kard_youchangjiedai kardCount

scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air


scoreboard players add @s kardCount 12
scoreboard players remove @s kardCountmax 2

