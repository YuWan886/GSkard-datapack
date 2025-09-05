function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] at @e[tag=blue_marker_6] run summon slime ~ 0 ~ {Size:4,Team:red,Tags:["Mob_Start"]}
execute if entity @s[team=red] at @e[tag=blue_marker_8] run summon slime ~ 0 ~ {Size:4,Team:red,Tags:["Mob_Start"]}
execute if entity @s[team=red] unless entity @e[team=red,type=!player,tag=!tuteng,tag=!Mob_Start] at @e[tag=blue_marker_4] run summon slime ~ 0 ~ {Size:4,Team:red,Tags:["Mob_Start"]}
execute if entity @s[team=red] unless entity @e[team=red,type=!player,tag=!tuteng,tag=!Mob_Start] at @e[tag=blue_marker_10] run summon slime ~ 0 ~ {Size:4,Team:red}

execute if entity @s[team=blue] at @e[tag=red_marker_6] run summon slime ~ 0 ~ {Size:4,Team:blue,Tags:["Mob_Start"]}
execute if entity @s[team=blue] at @e[tag=red_marker_8] run summon slime ~ 0 ~ {Size:4,Team:blue,Tags:["Mob_Start"]}
execute if entity @s[team=blue] unless entity @e[team=blue,type=!player,tag=!tuteng,tag=!Mob_Start] at @e[tag=red_marker_4] run summon slime ~ 0 ~ {Size:4,Team:blue,Tags:["Mob_Start"]}
execute if entity @s[team=blue] unless entity @e[team=blue,type=!player,tag=!tuteng,tag=!Mob_Start] at @e[tag=red_marker_10] run summon slime ~ 0 ~ {Size:4,Team:blue}

tag @e[tag=Mob_Start] remove Mob_Start

function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_errenchengjun kardCount
