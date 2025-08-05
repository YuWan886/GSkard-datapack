
execute if entity @s[team=red] at @e[tag=blue_marker_1] run summon creeper ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start","baozhajuntuan"]}
execute if entity @s[team=red] at @e[tag=blue_marker_3] run summon creeper ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start","baozhajuntuan"]}
execute if entity @s[team=red] at @e[tag=blue_marker_11] run summon creeper ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start","baozhajuntuan"]}
execute if entity @s[team=red] at @e[tag=blue_marker_13] run summon creeper ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start","baozhajuntuan"]}

execute if entity @s[team=blue] at @e[tag=red_marker_1] run summon creeper ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start","baozhajuntuan"]}
execute if entity @s[team=blue] at @e[tag=red_marker_3] run summon creeper ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start","baozhajuntuan"]}
execute if entity @s[team=blue] at @e[tag=red_marker_11] run summon creeper ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start","baozhajuntuan"]}
execute if entity @s[team=blue] at @e[tag=red_marker_13] run summon creeper ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start","baozhajuntuan"]}

execute if entity @s[team=red] if entity @e[tag=jiben_creeper,team=red] as @e[tag=Mob_Start] at @s run function kards:game/yongpaiku/juntuan/baozhajuntuan/2
execute if entity @s[team=blue] if entity @e[tag=jiben_creeper,team=blue] as @e[tag=Mob_Start] at @s run function kards:game/yongpaiku/juntuan/baozhajuntuan/2

tag @e[tag=Mob_Start] remove Mob_Start

function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_baozhajuntuan kardCount
