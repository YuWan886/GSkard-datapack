function kards:game/yongpaiku/use_general/kard_general


function kards:game/yongpaiku/xianjing/jiance/shenjijiance

execute if entity @s[team=red] run kill @a[team=blue,scores={health=..50},gamemode=adventure,tag=!jinzijue]

execute if entity @s[team=blue] run kill @a[team=red,scores={health=..50},gamemode=adventure,tag=!jinzijue]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_linghungeshe kardCount
