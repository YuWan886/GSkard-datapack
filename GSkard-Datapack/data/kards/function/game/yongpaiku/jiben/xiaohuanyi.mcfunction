function kards:game/yongpaiku/use_general/kard_general
   execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:phantom ~ 5 ~ {size:4,attributes:[{id:"follow_range",base:100},{id:"minecraft:scale",base:0.4d}],Team:red}
   execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:phantom ~ 5 ~ {size:4,attributes:[{id:"follow_range",base:100},{id:"minecraft:scale",base:0.4d}],Team:blue}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xiaohuanyi kardCount


