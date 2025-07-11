execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[凌驾]",color:"white",hover_event:{action:"show_text",value:"获得一张君临天下卡牌"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general
function kards:game/paiku/yansheng/junlintianxia
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_lingjia kardCount
