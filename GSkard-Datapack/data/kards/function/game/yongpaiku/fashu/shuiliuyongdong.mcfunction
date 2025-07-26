



function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_shuiliuyongdong kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] run scoreboard players add @a[team=red] HealBack 16

execute if entity @s[team=blue] run scoreboard players add @a[team=blue] HealBack 16

scoreboard players add @s cishu 1

execute unless score @s kardCount matches 4.. run return fail

execute if entity @s[team=red] run scoreboard players add @a[team=red] HealBack 16
execute if entity @s[team=blue] run scoreboard players add @a[team=blue] HealBack 16