execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[禁字诀]",color:"dark_purple",hover_event:{action:"show_text",value:"减少生命上限获得增益"}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_jinzijue kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
function kards:game/yongpaiku/fashu/jinzijue/2

