function kards:game/yongpaiku/use_general/kard_general


function kards:game/yongpaiku/xianjing/jiance/shenjijiance
    
    execute if entity @s[team=blue] run effect give @e[type=!player,type=!iron_golem,team=blue] speed 3 3 false
    execute if entity @s[team=blue] run effect give @e[type=!player,type=!iron_golem,team=blue] strength 3 3 false
    
    execute if entity @s[team=red] run effect give @e[type=!player,type=!iron_golem,team=red] speed 3 3 false
    execute if entity @s[team=red] run effect give @e[type=!player,type=!iron_golem,team=red] strength 3 3 false
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_shenglihaojiao kardCount
