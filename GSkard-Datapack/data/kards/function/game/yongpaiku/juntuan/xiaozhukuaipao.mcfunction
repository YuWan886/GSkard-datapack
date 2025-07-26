


    execute if entity @s[team=red] as @e[tag=blue_marker_2] at @s run summon hoglin ~ 1 ~ {Team:red,IsImmuneToZombification:true,Age:0,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:30.0d}],Health:30.0f,CannotBeHunted:1b}
    execute if entity @s[team=red] as @e[tag=blue_marker_11] at @s run summon hoglin ~ 1 ~ {Team:red,IsImmuneToZombification:true,Age:0,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:30.0d}],Health:30.0f,CannotBeHunted:1b}
    execute if entity @s[team=red] as @e[tag=blue_marker_13] at @s run summon hoglin ~ 1 ~ {Team:red,IsImmuneToZombification:true,Age:0,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:30.0d}],Health:30.0f,CannotBeHunted:1b}

    execute if entity @s[team=blue] as @e[tag=red_marker_2] at @s run summon hoglin ~ 1 ~ {Team:blue,IsImmuneToZombification:true,Age:0,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:30.0d}],Health:30.0f,CannotBeHunted:1b}
    execute if entity @s[team=blue] as @e[tag=red_marker_11] at @s run summon hoglin ~ 1 ~ {Team:blue,IsImmuneToZombification:true,Age:0,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:30.0d}],Health:30.0f,CannotBeHunted:1b}
    execute if entity @s[team=blue] as @e[tag=red_marker_13] at @s run summon hoglin ~ 1 ~ {Team:blue,IsImmuneToZombification:true,Age:0,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:30.0d}],Health:30.0f,CannotBeHunted:1b}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xiaozhukuaipao kardCount
