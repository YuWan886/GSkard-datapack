
function kards:game/yongpaiku/xianjing/jiance/fashujiance
scoreboard players operation @s kardCountmax -= #kard_youchangjiedai kardCountmax

function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

scoreboard players add @s kardCount 12

