



function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_shihuapifu kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] run effect give @a[team=red] absorption 90 9 true

execute if entity @s[team=blue] run effect give @a[team=blue] absorption 90 9 true

