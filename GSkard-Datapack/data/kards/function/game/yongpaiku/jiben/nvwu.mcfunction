execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[女巫]",color:"blue"}]

    execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon witch ~ 1 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}

    execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon witch ~ 1 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_nvwu kardCount
