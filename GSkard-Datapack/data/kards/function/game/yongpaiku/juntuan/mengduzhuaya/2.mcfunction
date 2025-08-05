execute if entity @s[scores={kardCount=20..29}] as @e[tag=Mob_Start,type=cave_spider,limit=1] at @s run summon bogged ~ ~ ~ {equipment:{mainhand:{id:"minecraft:bow"}},attributes:[{id:"follow_range",base:100},{id:"max_health",base:20}],Health:20,Tags:["Mob_Start"]}
execute if entity @s[scores={kardCount=30..39}] as @e[tag=Mob_Start,type=cave_spider,limit=2] at @s run summon bogged ~ ~ ~ {equipment:{mainhand:{id:"minecraft:bow"}},attributes:[{id:"follow_range",base:100},{id:"max_health",base:20}],Health:20,Tags:["Mob_Start"]}
execute if entity @s[scores={kardCount=40..49}] as @e[tag=Mob_Start,type=cave_spider,limit=3] at @s run summon bogged ~ ~ ~ {equipment:{mainhand:{id:"minecraft:bow"}},attributes:[{id:"follow_range",base:100},{id:"max_health",base:20}],Health:20,Tags:["Mob_Start"]}
execute if entity @s[scores={kardCount=50..}] as @e[tag=Mob_Start,type=cave_spider,limit=4] at @s run summon bogged ~ ~ ~ {equipment:{mainhand:{id:"minecraft:bow"}},attributes:[{id:"follow_range",base:100},{id:"max_health",base:20}],Health:20,Tags:["Mob_Start"]}
execute as @e[tag=Mob_Start,type=bogged] at @s run ride @s mount @n[tag=Mob_Start,type=cave_spider]

execute if entity @s[team=red] run team join red @e[tag=Mob_Start,type=bogged]
execute if entity @s[team=blue] run team join blue @e[tag=Mob_Start,type=bogged]