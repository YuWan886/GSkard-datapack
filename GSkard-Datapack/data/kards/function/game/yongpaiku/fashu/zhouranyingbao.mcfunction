
function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_zhouranyingbao kardCount

function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon creeper ~ 1 ~ {Team:red,ExplosionRadius:4,Fuse:10,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"max_health",base:30.0d}],Health:30.0f}

execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon creeper ~ 1 ~ {Team:blue,ExplosionRadius:4,Fuse:10,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"max_health",base:30.0d}],Health:30.0f}

