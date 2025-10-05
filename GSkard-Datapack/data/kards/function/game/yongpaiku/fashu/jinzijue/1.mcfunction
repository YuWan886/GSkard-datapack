function kards:game/yongpaiku/use_general/kard_general
scoreboard players operation @s kardCount -= #kard_jinzijue kardCount
function kards:game/yongpaiku/xianjing/jiance/fashujiance
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
function kards:game/yongpaiku/fashu/jinzijue/2

