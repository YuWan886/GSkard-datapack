function kards:game/yongpaiku/use_general/kard_general

execute if entity @s[team=red] at @e[tag=blue_marker_1] run summon creeper ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start","baozhajuntuan"]}
execute if entity @s[team=red] at @e[tag=blue_marker_3] run summon creeper ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start","baozhajuntuan"]}
execute if entity @s[team=red] at @e[tag=blue_marker_11] run summon creeper ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start","baozhajuntuan"]}
execute if entity @s[team=red] at @e[tag=blue_marker_13] run summon creeper ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start","baozhajuntuan"]}

execute if entity @s[team=blue] at @e[tag=red_marker_1] run summon creeper ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start","baozhajuntuan"]}
execute if entity @s[team=blue] at @e[tag=red_marker_3] run summon creeper ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start","baozhajuntuan"]}
execute if entity @s[team=blue] at @e[tag=red_marker_11] run summon creeper ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start","baozhajuntuan"]}
execute if entity @s[team=blue] at @e[tag=red_marker_13] run summon creeper ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start","baozhajuntuan"]}

execute if items entity @s container.* music_disc_mall[custom_data~{kards:'苦力怕'}] as @e[tag=Mob_Start] at @s run function kards:game/yongpaiku/juntuan/baozhajuntuan/2
execute if items entity @s container.* music_disc_mall[custom_data~{kards:'苦力怕'}] run function kards:game/yongpaiku/juntuan/baozhajuntuan/3

tag @e[tag=Mob_Start] remove Mob_Start

function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_baozhajuntuan kardCount
