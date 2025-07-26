
function kards:game/yongpaiku/xianjing/jiance/fashujiance
scoreboard players operation @s kardCount -= #kard_zaijijinhou kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air



execute if entity @s[team=red] run kill @e[tag=tuteng,limit=1,team=blue,sort=random]

execute if entity @s[team=blue] run kill @e[tag=tuteng,limit=1,team=red,sort=random]

