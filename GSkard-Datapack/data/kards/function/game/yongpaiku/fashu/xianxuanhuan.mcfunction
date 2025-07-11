execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[鲜血转化]",color:"dark_purple",hover_event:{action:"show_text",value:"扣除24♥ 抽4张法术卡"}}]

function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_xianxuanhuan kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

scoreboard players add @s fashucishu 4
effect give @s minecraft:instant_damage 1 3 true