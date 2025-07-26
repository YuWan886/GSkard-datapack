


    execute if entity @s[team=red] as @e[tag=blue_marker_5] at @s run summon creeper ~ 1 ~ {powered:1b,Team:red}
    execute if entity @s[team=red] as @e[tag=blue_marker_9] at @s run summon creeper ~ 1 ~ {powered:1b,Team:red}

    execute if entity @s[team=blue] as @e[tag=red_marker_5] at @s run summon creeper ~ 1 ~ {powered:1b,Team:blue}
    execute if entity @s[team=blue] as @e[tag=red_marker_9] at @s run summon creeper ~ 1 ~ {powered:1b,Team:blue}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_morilailin kardCount
