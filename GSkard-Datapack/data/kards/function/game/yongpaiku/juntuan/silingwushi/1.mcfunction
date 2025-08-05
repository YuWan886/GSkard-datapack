execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:witch ~ 0 ~ {Team:red,Tags:["silingwushi"],active_effects:[{id:"speed",show_particles:0b,duration:-1}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:blaze_rod"}},attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:48.0d},{id:"minecraft:attack_damage",base:0.0d}],Health:48.0f}

execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:witch ~ 0 ~ {Team:blue,Tags:["silingwushi"],active_effects:[{id:"speed",show_particles:0b,duration:-1}],equipment:{head:{id:"minecraft:leather_helmet"},mainhand:{id:"minecraft:blaze_rod"}},attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:48.0d},{id:"minecraft:attack_damage",base:0.0d}],Health:48.0f}

function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_silingwushi kardCount


