execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[灾厄双星]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤一只幻术师与唤魔者"}}]
   
    execute if entity @s[team=red] as @e[tag=blue_marker_6] at @s run summon minecraft:illusioner ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:30.0d}],Health:30.0f,equipment:{mainhand:{id:"minecraft:bow"}},}
    execute if entity @s[team=red] as @e[tag=blue_marker_8] at @s run summon minecraft:evoker ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:30.0d}],Health:30.0f}

    execute if entity @s[team=blue] as @e[tag=red_marker_6] at @s run summon minecraft:illusioner ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:30.0d}],Health:30.0f,equipment:{mainhand:{id:"minecraft:bow"}},}
    execute if entity @s[team=blue] as @e[tag=red_marker_8] at @s run summon minecraft:evoker ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:30.0d}],Health:30.0f}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zaieshuangxing kardCount

