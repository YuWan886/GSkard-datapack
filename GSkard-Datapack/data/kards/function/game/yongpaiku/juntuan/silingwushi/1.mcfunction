execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[死灵巫师]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤1只死灵巫师"}}]


    execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:witch ~ 1 ~ {Team:red,Tags:["silingfashi"],Passengers:[{id:"minecraft:wither_skeleton",Team:red,Tags:["silingfashi"],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}],attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:attack_damage",base:0.0d},{id:"minecraft:scale",base:0.01d}]}],active_effects:[{id:"speed",show_particles:0b,duration:-1}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:blaze_rod"}},attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:48.0d},{id:"minecraft:attack_damage",base:0.0d}],Health:48.0f}

    execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:witch ~ 1 ~ {Team:blue,Tags:["silingfashi"],Passengers:[{id:"minecraft:wither_skeleton",Team:blue,Tags:["silingfashi"],Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",show_particles:0b,duration:-1}],attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:attack_damage",base:0.0d},{id:"minecraft:scale",base:0.01d}]}],active_effects:[{id:"speed",show_particles:0b,duration:-1}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:blaze_rod"}},attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:48.0d},{id:"minecraft:attack_damage",base:0.0d}],Health:48.0f}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_silingwushi kardCount


