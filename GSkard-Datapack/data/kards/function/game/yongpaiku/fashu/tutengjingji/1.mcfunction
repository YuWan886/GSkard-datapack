execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[图腾进击]",color:"dark_purple",hover_event:{action:"show_text",value:[{text: "对所有敌方生物造成等同于友方",color:"gray",italic:false},{text: "图腾数*2",color:"gold",italic:false},{text: "的",color:"gray",italic:false},{text: "法术伤害",color:"light_purple",italic:false}]}}]

function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_tutengjinji kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] store result score @s tutengjinji if entity @e[tag=tuteng,team=red]
execute if entity @s[team=blue] store result score @s tutengjinji if entity @e[tag=tuteng,team=blue]

function kards:game/yongpaiku/fashu/tutengjingji/2