#羊
    #蓝
    execute if entity @e[team=blue,tag=tuteng,type=sheep] run scoreboard players add @a[team=blue] HealBack 4
    execute if entity @e[team=blue,tag=tuteng,type=sheep] run effect give @e[team=blue,tag=tuteng] minecraft:regeneration 3 1
    #红
    execute if entity @e[team=red,tag=tuteng,type=sheep] run scoreboard players add @a[team=red] HealBack 4
    execute if entity @e[team=red,tag=tuteng,type=sheep] run effect give @e[team=red,tag=tuteng] minecraft:regeneration 3 1
#鸡
    #蓝
    execute if entity @e[team=blue,tag=tuteng,type=chicken] if entity @a[team=blue,scores={canuse=1}] run scoreboard players add @a[team=blue] kardCount 5
    #红
    execute if entity @e[team=red,tag=tuteng,type=chicken] if entity @a[team=red,scores={canuse=1}] run scoreboard players add @a[team=red] kardCount 5
#流浪商人
    #蓝
    execute if entity @e[team=blue,tag=tuteng,type=wandering_trader] run scoreboard players add @a[team=blue,scores={canuse=1}] cishu 1
    #红
    execute if entity @e[team=red,tag=tuteng,type=wandering_trader] run scoreboard players add @a[team=red,scores={canuse=1}] cishu 1
#村民
    #蓝
    execute if entity @e[team=blue,tag=tuteng,type=villager] run effect give @e[type=iron_golem,tag=tuteng,team=blue] instant_health 1 2 true
    #红
    execute if entity @e[team=red,tag=tuteng,type=villager] run effect give @e[type=iron_golem,tag=tuteng,team=red] instant_health 1 2 true
#豹猫
    #蓝
    execute if entity @e[team=blue,tag=tuteng,type=ocelot] as @e[tag=tuteng,team=red,limit=1,sort=random] run function kards:game/yongpaiku/tuteng/baomao/1
    #红
    execute if entity @e[team=red,tag=tuteng,type=ocelot] as @e[tag=tuteng,team=blue,limit=1,sort=random] run function kards:game/yongpaiku/tuteng/baomao/2