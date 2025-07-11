execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[洗牌]",color:"dark_purple",hover_event:{action:"show_text",value:"将物品栏最左边两张牌回收 抽两张牌"}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance
scoreboard players operation @s kardCount -= #kard_xipai kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
execute store result score @s kapaishuliang run clear @s #minecraft:creeper_drop_music_discs 0
clear @s #minecraft:creeper_drop_music_discs 2
execute if score @s kapaishuliang matches 1 run scoreboard players add @s cishu 1
execute if score @s kapaishuliang matches 2.. run scoreboard players add @s cishu 2

scoreboard players set @s kapaishuliang 0
