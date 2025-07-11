execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[灵魂割舍]",color:"white",hover_event:{action:"show_text",value:"斩杀敌方等于低于25生命值的所有玩家"}}]
function kards:game/yongpaiku/xianjing/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general

execute if entity @s[team=red] run kill @a[team=blue,scores={health=..50},gamemode=adventure,tag=!jinzijue]

execute if entity @s[team=blue] run kill @a[team=red,scores={health=..50},gamemode=adventure,tag=!jinzijue]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_linghungeshe kardCount
