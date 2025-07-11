execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[春暖花开]",color:"dark_purple",hover_event:{action:"show_text",value:"抽四张牌"}}]

function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_chunnuanhuakai kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
execute if entity @s[team=red] run scoreboard players add @s cishu 4
execute if entity @s[team=blue] run scoreboard players add @s cishu 4

