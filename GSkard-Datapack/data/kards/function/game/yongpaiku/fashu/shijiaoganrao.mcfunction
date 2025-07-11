execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[视角干扰]",color:"dark_purple",hover_event:{action:"show_text",value:"随机旋转敌方玩家视角"}}]

function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_shijiaoganrao kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] run tag @a[team=blue,gamemode=adventure] add XuanZhuan
execute if entity @s[team=red] run scoreboard players add @a[team=blue,gamemode=adventure] XuanZhuan 50

execute if entity @s[team=blue] run tag @a[team=red,gamemode=adventure] add XuanZhuan
execute if entity @s[team=blue] run scoreboard players add @a[team=red,gamemode=adventure] XuanZhuan 50
