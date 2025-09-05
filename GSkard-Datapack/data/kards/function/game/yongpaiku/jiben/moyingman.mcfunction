function kards:game/yongpaiku/use_general/kard_general



    execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon endermite ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:red}

    execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon endermite ~ 0 ~ {attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:16.0d}],Health:16.0f,Team:blue}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_moyingman kardCount
