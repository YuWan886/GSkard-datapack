execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[飓风过境]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤5只旋风人"}}]
    #红队用
    execute if entity @s[team=red] as @e[tag=blue_marker_4] at @s run summon breeze ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:red}
    execute if entity @s[team=red] as @e[tag=blue_marker_6] at @s run summon breeze ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:red}
    execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon breeze ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:red}
    execute if entity @s[team=red] as @e[tag=blue_marker_8] at @s run summon breeze ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:red}
    execute if entity @s[team=red] as @e[tag=blue_marker_10] at @s run summon breeze ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:red}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=red_marker_4] at @s run summon breeze ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:blue}
    execute if entity @s[team=blue] as @e[tag=red_marker_6] at @s run summon breeze ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:blue}
    execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon breeze ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:blue}
    execute if entity @s[team=blue] as @e[tag=red_marker_8] at @s run summon breeze ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:blue}
    execute if entity @s[team=blue] as @e[tag=red_marker_10] at @s run summon breeze ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Team:blue}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jufengguojing kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1