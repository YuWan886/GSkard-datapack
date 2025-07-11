execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[深海恐惧]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤三只守卫者"}}]

    execute if entity @s[team=red] as @e[tag=blue_marker_2] at @s run summon guardian ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_11] at @s run summon guardian ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_13] at @s run summon guardian ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}

    execute if entity @s[team=blue] as @e[tag=red_marker_2] at @s run summon guardian ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_11] at @s run summon guardian ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_13] at @s run summon guardian ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_shenghaikongju kardCount
