execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[反转]",color:"dark_purple",hover_event:{action:"show_text",value:"将双方图腾交换"}}]

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_fanzhuan kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1

function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red,type=player] if score 红队 xianjin_shufashixiao matches 1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue,type=player] if score 蓝队 xianjin_shufashixiao matches 1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red,type=player] if score 红队 xianjin_youdi matches 1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue,type=player] if score 蓝队 xianjin_youdi matches 1 run return run scoreboard players set 蓝队 xianjin_youdi 0

tag @e[tag=tuteng] add Move

tag @e[tag=Move,team=red] remove Move
team join blue @e[team=red,tag=tuteng,tag=!Move]

team join red @e[team=blue,tag=tuteng,tag=Move]
tag @e[tag=Move,team=blue] remove Move

execute as @e[team=red,tag=tuteng,type=!iron_golem] at @e[limit=1,tag=r_tuteng] run tp @s ~ 0 ~
execute as @e[team=red,tag=tuteng,type=iron_golem] at @e[limit=1,tag=red_marker_7] run tp @s ~ 0 ~

execute as @e[team=blue,tag=tuteng,type=!iron_golem] at @e[limit=1,tag=b_tuteng] run tp @s ~ 0 ~
execute as @e[team=blue,tag=tuteng,type=iron_golem] at @e[limit=1,tag=blue_marker_7] run tp @s ~ 0 ~
