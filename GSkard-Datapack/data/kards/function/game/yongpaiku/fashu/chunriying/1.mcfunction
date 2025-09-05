function kards:game/yongpaiku/use_general/kard_general
scoreboard players operation @s kardCount -= #kard_chunriying kardCount
function kards:game/yongpaiku/xianjing/jiance/fashujiance
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] summon block_display at @s run function kards:game/yongpaiku/fashu/chunriying/2
 

execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] summon block_display at @s run function kards:game/yongpaiku/fashu/chunriying/2
