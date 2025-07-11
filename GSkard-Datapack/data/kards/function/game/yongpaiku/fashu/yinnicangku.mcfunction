execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[隐匿仓库]",color:"dark_purple",hover_event:{action:"show_text",value:[{text: "下回合开始时额外增加",color:"gray",italic:false},{text: "12K",color:"gold",italic:false}]}}]
function kards:game/yongpaiku/xianjin/jiance/fashujiance
scoreboard players operation @s kardCount -= #kard_yinnicangku kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
scoreboard players set @s yinnicangku 1
