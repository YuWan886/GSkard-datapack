function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] at @e[tag=blue_marker_4] run summon bee ~ 5 ~ {Team:red,AngerTime:1000000000,Tags:["Mob_Start"]}
execute if entity @s[team=red] at @e[tag=blue_marker_6] run summon bee ~ 5 ~ {Team:red,AngerTime:1000000000,Tags:["Mob_Start"]}
execute if entity @s[team=red] at @e[tag=blue_marker_8] run summon bee ~ 5 ~ {Team:red,AngerTime:1000000000,Tags:["Mob_Start"]}
execute if entity @s[team=red] at @e[tag=blue_marker_10] run summon bee ~ 5 ~ {Team:red,AngerTime:1000000000,Tags:["Mob_Start"]}

execute if entity @s[team=blue] at @e[tag=red_marker_4] run summon bee ~ 5 ~ {Team:blue,AngerTime:1000000000,Tags:["Mob_Start"]}
execute if entity @s[team=blue] at @e[tag=red_marker_6] run summon bee ~ 5 ~ {Team:blue,AngerTime:1000000000,Tags:["Mob_Start"]}
execute if entity @s[team=blue] at @e[tag=red_marker_8] run summon bee ~ 5 ~ {Team:blue,AngerTime:1000000000,Tags:["Mob_Start"]}
execute if entity @s[team=blue] at @e[tag=red_marker_10] run summon bee ~ 5 ~ {Team:blue,AngerTime:1000000000,Tags:["Mob_Start"]}

execute if entity @s[team=red] if entity @e[tag=!Mob_Start,type=bee] as @e[tag=Mob_Start] run tp @s @e[tag=!Mob_Start,type=bee,limit=1,team=red] 
execute if entity @s[team=blue] if entity @e[tag=!Mob_Start,type=bee] as @e[tag=Mob_Start] run tp @s @e[tag=!Mob_Start,type=bee,limit=1,team=blue] 
tag @e[tag=Mob_Start] remove Mob_Start

function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_fengyongerzhi kardCount
