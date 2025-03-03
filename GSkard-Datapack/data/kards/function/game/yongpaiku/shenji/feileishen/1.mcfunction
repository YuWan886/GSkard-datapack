execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text:"使用了",color:"gold"},{text:"[飞雷神]",color:"white",hover_event:{action:"show_text",value:"传送至敌方区域 10s后折回"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
#红
execute if entity @s[team=red] positioned as @e[tag=7r] run tp @s ~ 0 ~
#蓝
execute if entity @s[team=blue] positioned as @e[tag=7b] run tp @s ~ 0 ~
scoreboard players set @s feileishen 200
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 0
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1