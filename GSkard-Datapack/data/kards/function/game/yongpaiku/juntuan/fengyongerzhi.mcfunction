execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[蜂拥而至]",color:"dark_green",hover_event:{action:"show_text",value:"在敌方召唤5只蜜蜂"}}]
    execute if entity @s[team=red] as @e[tag=blue_marker_4] at @s run summon bee ~ 5 ~ {Team:red,AngerTime:1000000000}
    execute if entity @s[team=red] as @e[tag=blue_marker_6] at @s run summon bee ~ 5 ~ {Team:red,AngerTime:1000000000}
    execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon bee ~ 5 ~ {Team:red,AngerTime:1000000000}
    execute if entity @s[team=red] as @e[tag=blue_marker_8] at @s run summon bee ~ 5 ~ {Team:red,AngerTime:1000000000}
    execute if entity @s[team=red] as @e[tag=blue_marker_10] at @s run summon bee ~ 5 ~ {Team:red,AngerTime:1000000000}
    execute if entity @s[team=blue] as @e[tag=red_marker_4] at @s run summon bee ~ 5 ~ {Team:blue,AngerTime:1000000000}
    execute if entity @s[team=blue] as @e[tag=red_marker_6] at @s run summon bee ~ 5 ~ {Team:blue,AngerTime:1000000000}
    execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon bee ~ 5 ~ {Team:blue,AngerTime:1000000000}
    execute if entity @s[team=blue] as @e[tag=red_marker_8] at @s run summon bee ~ 5 ~ {Team:blue,AngerTime:1000000000}
    execute if entity @s[team=blue] as @e[tag=red_marker_10] at @s run summon bee ~ 5 ~ {Team:blue,AngerTime:1000000000}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_fengyongerzhi kardCount
