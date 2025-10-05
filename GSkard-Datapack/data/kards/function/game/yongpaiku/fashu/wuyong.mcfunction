function kards:game/yongpaiku/use_general/kard_general




function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_wuyong kardCount
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
function kards:game/paiku/yansheng/wuyong/fashu
function kards:game/paiku/yansheng/wuyong/shenji
function kards:game/paiku/yansheng/wuyong/jiben

