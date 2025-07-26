



    execute if entity @s[team=red] as @e[tag=blue_marker_6] at @s run summon slime ~ 1 ~ {Size:5,Team:red}
    execute if entity @s[team=red] as @e[tag=blue_marker_8] at @s run summon slime ~ 1 ~ {Size:5,Team:red}

    execute if entity @s[team=blue] as @e[tag=red_marker_6] at @s run summon slime ~ 1 ~ {Size:5,Team:blue}
    execute if entity @s[team=blue] as @e[tag=red_marker_8] at @s run summon slime ~ 1 ~ {Size:5,Team:blue}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_errenchengjun kardCount
