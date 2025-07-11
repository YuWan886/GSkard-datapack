execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[地狱之火]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤四只烈焰人"}}]


    execute if entity @s[team=red] at @e[tag=blue_marker_2] run summon blaze ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=red] at @e[tag=blue_marker_5] run summon blaze ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=red] at @e[tag=blue_marker_9] run summon blaze ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=red] at @e[tag=blue_marker_12] run summon blaze ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}

    execute if entity @s[team=blue] at @e[tag=red_marker_2] run summon blaze ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=blue] at @e[tag=red_marker_5] run summon blaze ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=blue] at @e[tag=red_marker_9] run summon blaze ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=blue] at @e[tag=red_marker_12] run summon blaze ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_diyuzhihuo kardCount
