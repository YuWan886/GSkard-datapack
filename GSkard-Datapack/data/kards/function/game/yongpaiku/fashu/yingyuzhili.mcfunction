function kards:game/yongpaiku/use_general/kard_general

function kards:game/yongpaiku/xianjing/jiance/fashujiance
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
scoreboard players operation @a[team=red] HealBack += @s[team=red] kardCount
scoreboard players operation @a[team=blue] HealBack += @s[team=blue] kardCount

scoreboard players set @s kardCount 0
