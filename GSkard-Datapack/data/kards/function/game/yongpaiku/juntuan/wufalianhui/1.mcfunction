execute if entity @s[team=red] unless entity @e[tag=silingwushi,team=red] run function kards:game/yongpaiku/juntuan/wufalianhui/2
execute if entity @s[team=blue] unless entity @e[tag=silingwushi,team=blue] run function kards:game/yongpaiku/juntuan/wufalianhui/2

execute if entity @s[team=red] if entity @e[tag=silingwushi,team=red] run function kards:game/yongpaiku/juntuan/wufalianhui/3
execute if entity @s[team=blue] if entity @e[tag=silingwushi,team=blue] run function kards:game/yongpaiku/juntuan/wufalianhui/3


function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wufalianhui kardCount
