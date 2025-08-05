execute if entity @s[team=red] at @e[tag=blue_marker_1] run summon magma_cube ~ 0 ~ {Team:red,Size:3,Tags:["sanrenchengzhong"],attributes:[{id:"follow_range",base:100}]}
execute if entity @s[team=red] at @e[tag=blue_marker_3] run summon magma_cube ~ 0 ~ {Team:red,Size:3,Tags:["sanrenchengzhong"],attributes:[{id:"follow_range",base:100}]}
execute if entity @s[team=red] at @e[tag=blue_marker_11] run summon magma_cube ~ 0 ~ {Team:red,Size:3,Tags:["sanrenchengzhong"],attributes:[{id:"follow_range",base:100}]}

execute if entity @s[team=blue] at @e[tag=red_marker_1] run summon magma_cube ~ 0 ~ {Team:blue,Size:3,Tags:["sanrenchengzhong"],attributes:[{id:"follow_range",base:100}]}
execute if entity @s[team=blue] at @e[tag=red_marker_3] run summon magma_cube ~ 0 ~ {Team:blue,Size:3,Tags:["sanrenchengzhong"],attributes:[{id:"follow_range",base:100}]}
execute if entity @s[team=blue] at @e[tag=red_marker_11] run summon magma_cube ~ 0 ~ {Team:blue,Size:3,Tags:["sanrenchengzhong"],attributes:[{id:"follow_range",base:100}]}

function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_sanrenchengzhong kardCount
