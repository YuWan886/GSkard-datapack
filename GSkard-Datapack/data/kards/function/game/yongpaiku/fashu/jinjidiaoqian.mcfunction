execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[紧急调遣]",color:"dark_purple",hover_event:{action:"show_text",value:"获得4Kmax"}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_jinjidiaoqian kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

#红
execute if entity @s[team=red] run scoreboard players add @s kardCountmax 4
#蓝
execute if entity @s[team=blue] run scoreboard players add @s kardCountmax 4

