function kards:game/yongpaiku/use_general/kard_general


scoreboard players operation @s kardCount -= #kard_manshui kardCount
function kards:game/yongpaiku/xianjing/jiance/fashujiance
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
execute if entity @s[team=red] run scoreboard players set 蓝队 manshui 1

execute if entity @s[team=blue] run scoreboard players set 红队 manshui 1

