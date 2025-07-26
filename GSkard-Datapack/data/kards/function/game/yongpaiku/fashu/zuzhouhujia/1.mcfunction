



function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_zuzhouhujia kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] as @r[team=blue,tag=!zuzhouhujia] at @s run function kards:game/yongpaiku/fashu/zuzhouhujia/2

execute if entity @s[team=blue] as @r[team=red,tag=!zuzhouhujia] at @s run function kards:game/yongpaiku/fashu/zuzhouhujia/2


