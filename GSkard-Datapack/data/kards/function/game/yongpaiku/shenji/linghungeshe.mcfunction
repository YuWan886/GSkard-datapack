execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[灵魂割舍]",color:"white",hover_event:{action:"show_text","value":"斩杀敌方等于低于25生命值的所有玩家"}}]
function kards:game/yongpaiku/xianjin/jiance/shenjijiance
#红
execute if entity @s[team=red] run kill @a[team=blue,scores={health=..50},gamemode=adventure,tag=!jinzijue]
#蓝
execute if entity @s[team=blue] run kill @a[team=red,scores={health=..50},gamemode=adventure,tag=!jinzijue]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_linghungeshe kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1