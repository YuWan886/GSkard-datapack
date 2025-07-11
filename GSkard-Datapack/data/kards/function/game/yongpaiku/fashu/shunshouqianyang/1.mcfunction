execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[顺手牵羊]",color:"dark_purple",hover_event:{action:"show_text",value:"你弃掉敌方一名玩家一张牌,抽一张牌"}}]

function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_shunshouqianyang kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with airscoreboard players add @s cishu 1
tag @s add User
execute if entity @s[team=red] as @r[team=blue,gamemode=adventure] run function kards:game/yongpaiku/fashu/shunshouqianyang/2
execute if entity @s[team=blue] as @r[team=red,gamemode=adventure] run function kards:game/yongpaiku/fashu/shunshouqianyang/2
tag @s remove User
