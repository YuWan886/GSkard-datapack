execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[灾厄双星]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤一只幻术师与唤魔者"}}]
   #红队用
    execute if entity @s[team=red] as @e[tag=blue_marker_6] at @s run summon minecraft:illusioner ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:30.0d}],Health:30.0f,equipment:{mainhand:{id:"minecraft:bow"}},}
    execute if entity @s[team=red] as @e[tag=blue_marker_8] at @s run summon minecraft:evoker ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:30.0d}],Health:30.0f}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=red_marker_6] at @s run summon minecraft:illusioner ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:30.0d}],Health:30.0f,equipment:{mainhand:{id:"minecraft:bow"}},}
    execute if entity @s[team=blue] as @e[tag=red_marker_8] at @s run summon minecraft:evoker ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:30.0d}],Health:30.0f}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zaieshuangxing kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
