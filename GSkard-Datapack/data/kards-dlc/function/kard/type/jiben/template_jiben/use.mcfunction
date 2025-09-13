function kards:game/yongpaiku/use_general/kard_general
   execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:elder_guardian ~ 0 ~ {Team:red,Health:40.0f,attributes:[{id:"follow_range",base:100},{id:"max_health",base:40}]}
   execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:elder_guardian ~ 0 ~ {Team:blue,Health:40.0f,attributes:[{id:"follow_range",base:100},{id:"max_health",base:40}]}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_template_jiben kardCount
