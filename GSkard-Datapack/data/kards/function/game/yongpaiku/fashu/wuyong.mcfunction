execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[无用]",color:"dark_purple",hover_event:{action:"show_text",value:"获得三张无用的牌"}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_wuyong kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
function kards:game/paiku/yansheng/wuyong/fashu
function kards:game/paiku/yansheng/wuyong/shenji
function kards:game/paiku/yansheng/wuyong/jiben

