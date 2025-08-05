



    execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon cave_spider ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}]}

    execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon cave_spider ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}]}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_juduzhizhu kardCount
