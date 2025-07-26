
function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_fanzhuan kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

tag @e[tag=tuteng] add Move

tag @e[tag=Move,team=red] remove Move
team join blue @e[team=red,tag=tuteng,tag=!Move]

team join red @e[team=blue,tag=tuteng,tag=Move]
tag @e[tag=Move,team=blue] remove Move

execute as @e[team=red,tag=tuteng,type=!iron_golem] at @e[limit=1,tag=r_tuteng] run tp @s ~ 0 ~
execute as @e[team=red,tag=tuteng,type=iron_golem] at @e[limit=1,tag=red_marker_7] run tp @s ~ 0 ~

execute as @e[team=blue,tag=tuteng,type=!iron_golem] at @e[limit=1,tag=b_tuteng] run tp @s ~ 0 ~
execute as @e[team=blue,tag=tuteng,type=iron_golem] at @e[limit=1,tag=blue_marker_7] run tp @s ~ 0 ~
