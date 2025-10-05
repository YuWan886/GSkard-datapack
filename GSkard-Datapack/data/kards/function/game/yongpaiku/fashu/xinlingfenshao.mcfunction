function kards:game/yongpaiku/use_general/kard_general

function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_xinlingfenshao kardCount
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air


execute if entity @s[team=red] run effect give @e[team=blue] wither 8 4 false

execute if entity @s[team=blue] run effect give @e[team=red] wither 8 4 false

