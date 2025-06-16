execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[心灵焚烧]",color:"dark_purple",hover_event:{action:"show_text",value:"使敌方队伍所有生物凋零（包括图腾与怪物）"}}]
function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_xinlingfenshao kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air


#红
execute if entity @s[team=red] run effect give @e[team=blue] wither 8 4 true
#蓝
execute if entity @s[team=blue] run effect give @e[team=red] wither 8 4 true

