
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[三人成众]",color:"dark_green",hover_event:{action:"show_text",value:"召唤三只大的岩浆史莱姆,每15秒生成一只小岩浆史莱姆"}}]

# 红队召唤逻辑
execute if entity @s[team=red] at @e[tag=blue_marker_1] run summon magma_cube ~ 5 ~ {Team:red,Size:3,Tags:["large_slime"],attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
execute if entity @s[team=red] at @e[tag=blue_marker_3] run summon magma_cube ~ 5 ~ {Team:red,Size:3,Tags:["large_slime"],attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
execute if entity @s[team=red] at @e[tag=blue_marker_11] run summon magma_cube ~ 5 ~ {Team:red,Size:3,Tags:["large_slime"],attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}

# 蓝队召唤逻辑
execute if entity @s[team=blue] at @e[tag=red_marker_1] run summon magma_cube ~ 5 ~ {Team:blue,Size:3,Tags:["large_slime"],attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
execute if entity @s[team=blue] at @e[tag=red_marker_3] run summon magma_cube ~ 5 ~ {Team:blue,Size:3,Tags:["large_slime"],attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
execute if entity @s[team=blue] at @e[tag=red_marker_11] run summon magma_cube ~ 5 ~ {Team:blue,Size:3,Tags:["large_slime"],attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}

function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_sanrenchengzhong kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1