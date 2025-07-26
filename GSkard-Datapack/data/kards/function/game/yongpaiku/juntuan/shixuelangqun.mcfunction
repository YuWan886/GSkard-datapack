


    execute if entity @s[team=red] as @e[tag=blue_marker_1] at @s run summon wolf ~ 1 ~ {Team:red,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=red] as @e[tag=blue_marker_5] at @s run summon minecraft:wolf ~ 1 ~ {Team:red,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=red] as @e[tag=blue_marker_11] at @s run summon minecraft:wolf ~ 1 ~ {Team:red,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=red] as @e[tag=blue_marker_3] at @s run summon minecraft:wolf ~ 1 ~ {Team:red,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=red] as @e[tag=blue_marker_9] at @s run summon minecraft:wolf ~ 1 ~ {Team:red,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=red] as @e[tag=blue_marker_13] at @s run summon minecraft:wolf ~ 1 ~ {Team:red,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:24.0d}],Health:24.0f}

    execute if entity @s[team=blue] as @e[tag=red_marker_1] at @s run summon minecraft:wolf ~ 1 ~ {Team:blue,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=blue] as @e[tag=red_marker_5] at @s run summon minecraft:wolf ~ 1 ~ {Team:blue,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=blue] as @e[tag=red_marker_11] at @s run summon minecraft:wolf ~ 1 ~ {Team:blue,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=blue] as @e[tag=red_marker_3] at @s run summon minecraft:wolf ~ 1 ~ {Team:blue,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=blue] as @e[tag=red_marker_9] at @s run summon minecraft:wolf ~ 1 ~ {Team:blue,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
    execute if entity @s[team=blue] as @e[tag=red_marker_13] at @s run summon minecraft:wolf ~ 1 ~ {Team:blue,Tags:["嗜血狼群"],AngerTime:1000000000,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:24.0d}],Health:24.0f}
execute as @e[type=wolf] run attribute @s minecraft:knockback_resistance base set 100
effect give @e[type=wolf] speed infinite 2 true
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_shixuelangqun kardCount

