

function kards:game/yongpaiku/use_general/kard_general

    
    execute if entity @s[team=blue] run effect give @e[type=!player,type=!iron_golem,team=blue] invisibility 5 1 true
    
    execute if entity @s[team=red] run effect give @e[type=!player,type=!iron_golem,team=red] invisibility 5 1 true
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wuxing kardCount
