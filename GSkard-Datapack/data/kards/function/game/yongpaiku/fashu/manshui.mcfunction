execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[漫水]",color:"dark_purple",hover_event:{action:"show_text",value:"使敌方场地一格高区域空气替换为水 持续至回合结束 不可叠加"}}]
function kards:game/yongpaiku/xianjin/jiance/fashujiance
scoreboard players operation @s kardCount -= #kard_manshui kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] run scoreboard players set 蓝队 manshui 1
execute if entity @s[team=blue] run scoreboard players set 红队 manshui 1
