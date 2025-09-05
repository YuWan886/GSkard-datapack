function kards:game/yongpaiku/use_general/kard_general




   execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon bee ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"flying_speed",base:1}],Tags:["mafeng"],Silent:1b,AngerTime:100000}

   execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon bee ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"flying_speed",base:1}],Tags:["mafeng"],Silent:1b,AngerTime:100000}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_mafeng kardCount
