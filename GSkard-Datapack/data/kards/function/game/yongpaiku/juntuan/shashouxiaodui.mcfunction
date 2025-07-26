



    execute if entity @s[team=red] as @e[tag=blue_marker_2] at @s run summon rabbit ~ 1 ~ {RabbitType:99,Team:red,Age:9999999}
    execute if entity @s[team=red] as @e[tag=blue_marker_5] at @s run summon rabbit ~ 1 ~ {RabbitType:99,Team:red,Age:9999999}
    execute if entity @s[team=red] as @e[tag=blue_marker_9] at @s run summon rabbit ~ 1 ~ {RabbitType:99,Team:red,Age:9999999}
    execute if entity @s[team=red] as @e[tag=blue_marker_12] at @s run summon rabbit ~ 1 ~ {RabbitType:99,Team:red,Age:9999999}

    execute if entity @s[team=blue] as @e[tag=red_marker_2] at @s run summon rabbit ~ 1 ~ {RabbitType:99,Team:blue,Age:9999999}
    execute if entity @s[team=blue] as @e[tag=red_marker_5] at @s run summon rabbit ~ 1 ~ {RabbitType:99,Team:blue,Age:9999999}
    execute if entity @s[team=blue] as @e[tag=red_marker_9] at @s run summon rabbit ~ 1 ~ {RabbitType:99,Team:blue,Age:9999999}
    execute if entity @s[team=blue] as @e[tag=red_marker_12] at @s run summon rabbit ~ 1 ~ {RabbitType:99,Team:blue,Age:9999999}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_shashouxiaodui kardCount
