execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[蛮兵]",color:"blue"}]

execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:piglin_brute ~ 1 ~ {Team:red,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_axe"}},Health:40.0f,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"max_health",base:40}]}

execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:piglin_brute ~ 1 ~ {Team:blue,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_axe"}},Health:40.0f,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"max_health",base:40}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_manbing kardCount
