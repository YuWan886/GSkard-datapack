execute if entity @s[team=red] at @e[tag=blue_marker_6] run summon minecraft:illusioner ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:30.0d}],Health:30.0f,equipment:{mainhand:{id:"minecraft:bow"}},}
execute if entity @s[team=red] at @e[tag=blue_marker_8] run summon minecraft:evoker ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:30.0d}],Health:30.0f}

execute if entity @s[team=blue] at @e[tag=red_marker_6] run summon minecraft:illusioner ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:30.0d}],Health:30.0f,equipment:{mainhand:{id:"minecraft:bow"}},}
execute if entity @s[team=blue] at @e[tag=red_marker_8] run summon minecraft:evoker ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:30.0d}],Health:30.0f}

execute if entity @s[team=red] store result score @s Mob_Count_Illager if entity @e[type=#minecraft:illager,team=red]
execute if entity @s[team=blue] store result score @s Mob_Count_Illager if entity @e[type=#minecraft:illager,team=blue]

execute if entity @s[team=red] if score @s Mob_Count_Illager matches 9.. at @e[tag=blue_marker_7] run summon minecraft:ravager ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:80.0d}],Health:80.0f}
execute if entity @s[team=blue] if score @s Mob_Count_Illager matches 9.. at @e[tag=red_marker_7] run summon minecraft:ravager ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:80.0d}],Health:80.0f}

scoreboard players reset @s Mob_Count_Illager

function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zaieshuangxing kardCount

