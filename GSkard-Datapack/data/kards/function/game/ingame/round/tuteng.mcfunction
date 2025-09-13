#羊
    
    execute if entity @e[team=blue,tag=tuteng,type=sheep] run scoreboard players add @a[team=blue] HealBack 8
    execute if entity @e[team=blue,tag=tuteng,type=sheep] run effect give @e[team=blue,tag=tuteng] minecraft:regeneration 3 1
    
    execute if entity @e[team=red,tag=tuteng,type=sheep] run scoreboard players add @a[team=red] HealBack 8
    execute if entity @e[team=red,tag=tuteng,type=sheep] run effect give @e[team=red,tag=tuteng] minecraft:regeneration 3 1
#鸡
    
    execute if entity @e[team=blue,tag=tuteng,type=chicken] if entity @a[team=blue,scores={CanuseKard=1}] run scoreboard players add @a[team=blue] kardCount 5
    
    execute if entity @e[team=red,tag=tuteng,type=chicken] if entity @a[team=red,scores={CanuseKard=1}] run scoreboard players add @a[team=red] kardCount 5
#流浪商人
    
    execute if entity @e[team=blue,tag=tuteng,type=wandering_trader] run scoreboard players add @a[team=blue,scores={CanuseKard=1}] cishu 1
    
    execute if entity @e[team=red,tag=tuteng,type=wandering_trader] run scoreboard players add @a[team=red,scores={CanuseKard=1}] cishu 1
#村民
    
    execute if entity @e[team=blue,tag=tuteng,type=villager] run effect give @e[type=iron_golem,tag=tuteng,team=blue] instant_health 1 2 false
    
    execute if entity @e[team=red,tag=tuteng,type=villager] run effect give @e[type=iron_golem,tag=tuteng,team=red] instant_health 1 2 false
#豹猫
    execute as @e[tag=tuteng,type=ocelot] run function kards:game/yongpaiku/tuteng/round_event/baomao
#培养尸
    execute as @e[tag=tuteng,tag=peiyangshi,type=zombie] run function kards:game/yongpaiku/tuteng/round_event/peiyangshi/1
    
#DLC
    function kards-dlc:kard/type/tuteng/round