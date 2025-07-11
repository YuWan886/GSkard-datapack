execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[猛毒爪牙]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤四只剧毒蜘蛛"}}]
    execute if entity @s[team=red] as @e[tag=blue_marker_1] at @s run summon cave_spider ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_3] at @s run summon cave_spider ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_11] at @s run summon cave_spider ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_13] at @s run summon cave_spider ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_1] at @s run summon cave_spider ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_3] at @s run summon cave_spider ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_11] at @s run summon cave_spider ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_13] at @s run summon cave_spider ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_mengduzhuaya kardCount
