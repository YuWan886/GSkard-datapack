function kards:game/yongpaiku/use_general/kard_general
    execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:piglin_brute ~ 0 ~ {Team:red,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_axe"}},Health:40.0f,attributes:[{id:"follow_range",base:100},{id:"max_health",base:40}]}
    execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:piglin_brute ~ 0 ~ {Team:blue,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_axe"}},Health:40.0f,attributes:[{id:"follow_range",base:100},{id:"max_health",base:40}]}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_manbing kardCount
