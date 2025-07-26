


function kards:game/yongpaiku/use_general/kard_general

execute if entity @s[team=red] run team modify blue friendlyFire true

execute if entity @s[team=blue] run team modify red friendlyFire true
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_hunluan kardCount
