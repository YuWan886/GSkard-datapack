execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[飞雷神]",color:"white",hover_event:{action:"show_text",value:"传送至敌方区域 10s后折回"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general

execute if entity @s[team=red] positioned as @e[tag=blue_marker_7] run tp @s ~ 0 ~

execute if entity @s[team=blue] positioned as @e[tag=red_marker_7] run tp @s ~ 0 ~
scoreboard players set @s feileishen 200
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_feileishen kardCount
