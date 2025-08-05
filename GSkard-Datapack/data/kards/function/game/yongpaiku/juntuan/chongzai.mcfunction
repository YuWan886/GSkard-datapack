execute if entity @s[team=red] at @e[type=#kards:mob,team=red,tag=!tuteng] run summon endermite ~ ~ ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}

execute if entity @s[team=blue] at @e[type=#kards:mob,team=blue,tag=!tuteng] run summon endermite ~ ~ ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue,active_effects:[{id:"speed",show_particles:0b,duration:-1}]}

function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_chongzai kardCount


