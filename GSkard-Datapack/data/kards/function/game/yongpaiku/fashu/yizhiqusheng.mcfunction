execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[以智取胜]",color:"dark_purple",hover_event:{action:"show_text",value:"抽1张装备牌和军团牌"}}]
function kards:game/yongpaiku/xianjing/jiance/fashujiance
scoreboard players operation @s kardCount -= #kard_yizhiqusheng kardCount

function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

scoreboard players add @s zhuangbeicishu 1
scoreboard players add @s juntuancishu 1

