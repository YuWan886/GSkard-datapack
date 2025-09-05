function kards:game/yongpaiku/use_general/kard_general




function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_tutengjinji kardCount
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] store result score @s tutengjinji if entity @e[tag=tuteng,team=red]
execute if entity @s[team=blue] store result score @s tutengjinji if entity @e[tag=tuteng,team=blue]

function kards:game/yongpaiku/fashu/tutengjingji/2