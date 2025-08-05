execute if entity @s[team=blue] at @e[tag=red_marker_6] run summon skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:blue,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start"]}
execute if entity @s[team=blue] at @e[tag=red_marker_8] run summon skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:blue,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start"]}
execute if entity @s[team=blue] at @e[tag=red_marker_4] run summon wither_skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:stone_sword"}},Team:blue,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start"]}
execute if entity @s[team=blue] at @e[tag=red_marker_10] run summon wither_skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:stone_sword"}},Team:blue,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start"]}

execute if entity @s[team=red] at @e[tag=blue_marker_6] run summon skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:red,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start"]}
execute if entity @s[team=red] at @e[tag=blue_marker_8] run summon skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:bow"}},Team:red,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start"]}
execute if entity @s[team=red] at @e[tag=blue_marker_4] run summon wither_skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:stone_sword"}},Team:red,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start"]}
execute if entity @s[team=red] at @e[tag=blue_marker_10] run summon wither_skeleton ~ 0 ~ {equipment:{mainhand:{id:"minecraft:stone_sword"}},Team:red,attributes:[{id:"follow_range",base:100}],Tags:["Mob_Start"]}

execute if items entity @s container.* music_disc_mall[custom_data~{kards:'恶魂'}] at @e[tag=blue_marker_7] run function kards:game/yongpaiku/juntuan/wanglingdajun/2

tag @e[tag=Mob_Start] remove Mob_Start

function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wanglingdajun kardCount
