execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[虫灾]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤8只末影瞒"}}]

    #红队用
    execute if entity @s[team=red] as @e[tag=blue_marker_2] at @s run summon endermite ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_5] at @s run summon endermite ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_9] at @s run summon endermite ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_12] at @s run summon endermite ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_2] at @s run summon endermite ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_5] at @s run summon endermite ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_9] at @s run summon endermite ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_12] at @s run summon endermite ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=red_marker_2] at @s run summon endermite ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_5] at @s run summon endermite ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_9] at @s run summon endermite ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_12] at @s run summon endermite ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_2] at @s run summon endermite ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_5] at @s run summon endermite ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_9] at @s run summon endermite ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_12] at @s run summon endermite ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_chongzai kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1

