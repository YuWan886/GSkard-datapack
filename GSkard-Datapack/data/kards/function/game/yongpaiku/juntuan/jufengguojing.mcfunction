execute if entity @s[team=red] at @e[tag=blue_marker_6] run summon breeze ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:red}
execute if entity @s[team=red] at @e[tag=blue_marker_8] run summon breeze ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:red}
execute if entity @s[team=red] if score @s kardCountmax matches 12.. at @e[tag=blue_marker_1] run summon breeze ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:red}
execute if entity @s[team=red] if score @s kardCountmax matches 24.. at @e[tag=blue_marker_3] run summon breeze ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:red}
execute if entity @s[team=red] if score @s kardCountmax matches 36.. at @e[tag=blue_marker_11] run summon breeze ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:red}
execute if entity @s[team=red] if score @s kardCountmax matches 48.. at @e[tag=blue_marker_13] run summon breeze ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:red}

execute if entity @s[team=blue] at @e[tag=red_marker_6] run summon breeze ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:blue}
execute if entity @s[team=blue] at @e[tag=red_marker_8] run summon breeze ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:blue}
execute if entity @s[team=blue] if score @s kardCountmax matches 12.. at @e[tag=red_marker_1] run summon breeze ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:blue}
execute if entity @s[team=blue] if score @s kardCountmax matches 24.. at @e[tag=red_marker_3] run summon breeze ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:blue}
execute if entity @s[team=blue] if score @s kardCountmax matches 36.. at @e[tag=red_marker_11] run summon breeze ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:blue}
execute if entity @s[team=blue] if score @s kardCountmax matches 48.. at @e[tag=red_marker_13] run summon breeze ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:blue}

function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jufengguojing kardCount
