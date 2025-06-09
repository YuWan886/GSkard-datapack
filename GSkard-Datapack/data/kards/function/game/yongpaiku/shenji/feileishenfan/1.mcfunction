execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[飞雷神•反]",color:"white",hover_event:{action:"show_text",value:{text:"对方阵营传送至我方区域 10s后折回"}}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
#红
execute if entity @s[team=red] run tag @r[team=blue,gamemode=adventure] add fanxiangfeileishen
execute if entity @s[team=blue] run tag @r[team=red,gamemode=adventure] add fanxiangfeileishen
execute positioned as @e[tag=blue_marker_7] run tp @a[tag=fanxiangfeileishen,team=red] ~ 5 ~
execute positioned as @e[tag=red_marker_7] run tp @a[tag=fanxiangfeileishen,team=blue] ~ 5 ~

execute as @a[tag=fanxiangfeileishen] run scoreboard players set @s feileishen 200
tag @a remove fanxiangfeileishen
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #fanxiangfeileishen kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1