
#牛
    
    execute if entity @e[team=blue,tag=tuteng,type=cow] run effect give @a[team=blue] strength 1 0 true
    
    execute if entity @e[team=red,tag=tuteng,type=cow] run effect give @a[team=red] strength 1 0 true
#猪
    kill @e[type=minecraft:zombified_piglin,tag=tuteng]
    
    execute if entity @e[team=blue,tag=tuteng,type=pig] run effect give @a[team=blue] resistance 1 0 true
    
    execute if entity @e[team=red,tag=tuteng,type=pig] run effect give @a[team=red] resistance 1 0 true
#兔
    
    execute if entity @e[team=blue,tag=tuteng,type=rabbit] run effect give @a[team=blue] jump_boost 1 2 true
    
    execute if entity @e[team=red,tag=tuteng,type=rabbit] run effect give @a[team=red] jump_boost 1 2 true
#豹猫
    
    execute if entity @e[team=blue,tag=tuteng,type=ocelot] run effect give @a[team=blue] speed 1 1 true
    
    execute if entity @e[team=red,tag=tuteng,type=ocelot] run effect give @a[team=red] speed 1 1 true
#村民
    kill @e[type=witch,tag=tuteng]
    
    execute if entity @e[team=blue,tag=tuteng,type=villager] run effect give @e[type=!player,team=blue] resistance 1 0 true
    execute if entity @e[team=blue,tag=tuteng,type=villager] run effect give @e[type=iron_golem,team=blue] speed 1 1 true
    
    execute if entity @e[team=red,tag=tuteng,type=villager] run effect give @e[type=!player,team=red] resistance 1 0 true
    execute if entity @e[team=red,tag=tuteng,type=villager] run effect give @e[type=iron_golem,team=red] speed 1 1 true
#蘑菇牛
    
    execute if entity @e[team=blue,tag=tuteng,type=mooshroom] run effect clear @a[team=blue] slowness
    execute if entity @e[team=blue,tag=tuteng,type=mooshroom] run effect clear @a[team=blue] mining_fatigue
    execute if entity @e[team=blue,tag=tuteng,type=mooshroom] run effect clear @a[team=blue] blindness
    execute if entity @e[team=blue,tag=tuteng,type=mooshroom] run effect clear @a[team=blue] weakness
    execute if entity @e[team=blue,tag=tuteng,type=mooshroom] run effect clear @a[team=blue] poison
    execute if entity @e[team=blue,tag=tuteng,type=mooshroom] run effect clear @a[team=blue] wither
    execute if entity @e[team=blue,tag=tuteng,type=mooshroom] run effect clear @a[team=blue] darkness
    execute if entity @e[team=blue,tag=tuteng,type=mooshroom] run effect clear @a[team=blue] levitation
    
    execute if entity @e[team=red,tag=tuteng,type=mooshroom] run effect clear @a[team=red] slowness
    execute if entity @e[team=red,tag=tuteng,type=mooshroom] run effect clear @a[team=red] mining_fatigue
    execute if entity @e[team=red,tag=tuteng,type=mooshroom] run effect clear @a[team=red] blindness
    execute if entity @e[team=red,tag=tuteng,type=mooshroom] run effect clear @a[team=red] weakness
    execute if entity @e[team=red,tag=tuteng,type=mooshroom] run effect clear @a[team=red] poison
    execute if entity @e[team=red,tag=tuteng,type=mooshroom] run effect clear @a[team=red] wither
    execute if entity @e[team=red,tag=tuteng,type=mooshroom] run effect clear @a[team=red] darkness
    execute if entity @e[team=red,tag=tuteng,type=mooshroom] run effect clear @a[team=red] levitation
#海龟
    
    execute if entity @e[team=blue,tag=tuteng,type=turtle] run effect give @e[team=red,type=!player,type=!iron_golem] slowness 1 0 true
    
    execute if entity @e[team=red,tag=tuteng,type=turtle] run effect give @e[team=blue,type=!player,type=!iron_golem] slowness 1 0 true
#铁傀儡
    
    execute as @e[team=blue,tag=tuteng,type=iron_golem] at @s run effect give @e[team=red,type=!player,type=!iron_golem,distance=..5] weakness 2 1 true
    
    execute as @e[team=red,tag=tuteng,type=iron_golem] at @s run effect give @e[team=blue,type=!player,type=!iron_golem,distance=..5] weakness 2 1 true
#流浪商人
    item replace entity @e[type=minecraft:wandering_trader] weapon.mainhand with air
#培养尸
    
    execute as @e[team=blue,tag=tuteng,type=zombie] run effect give @a[team=blue] fire_resistance 1 0 true
    
    execute as @e[team=red,tag=tuteng,type=zombie] run effect give @a[team=red] fire_resistance 1 0 true
