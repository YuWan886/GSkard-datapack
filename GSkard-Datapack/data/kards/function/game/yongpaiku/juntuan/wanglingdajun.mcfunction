execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[亡灵大军]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤两只凋零骷髅、三只骷髅"}}]
    execute if entity @s[team=blue] as @e[tag=red_marker_1] at @s run summon skeleton ~ 1 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_3] at @s run summon skeleton ~ 1 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_12] at @s run summon skeleton ~ 1 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=blue] as @e[tag=red_marker_5] at @s run summon wither_skeleton ~ 1 ~ {equipment:{mainhand:{id:"minecraft:stone_sword"}},Team:blue}
    execute if entity @s[team=blue] as @e[tag=red_marker_9] at @s run summon wither_skeleton ~ 1 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_1] at @s run summon skeleton ~ 1 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_3] at @s run summon skeleton ~ 1 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_12] at @s run summon skeleton ~ 1 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
    execute if entity @s[team=red] as @e[tag=blue_marker_5] at @s run summon wither_skeleton ~ 1 ~ {equipment:{mainhand:{id:"minecraft:stone_sword"}},Team:red}
    execute if entity @s[team=red] as @e[tag=blue_marker_9] at @s run summon wither_skeleton ~ 1 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wanglingdajun kardCount
