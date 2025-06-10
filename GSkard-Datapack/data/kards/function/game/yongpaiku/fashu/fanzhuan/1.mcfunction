execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[反转]",color:"dark_purple",hover_event:{action:"show_text",value:"将双方图腾交换"}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_fanzhuan kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute unless items entity @s weapon.offhand * run return fail
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
