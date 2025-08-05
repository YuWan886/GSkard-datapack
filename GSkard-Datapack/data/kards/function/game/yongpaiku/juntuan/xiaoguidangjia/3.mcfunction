summon minecraft:chicken ~ ~ ~ {Tags:["Mob_Start","xiaoguidangjia"],Team:red,attributes:[{id:"max_health",base:24}],Health:24f}
ride @s mount @n[tag=Mob_Start,type=chicken]

execute if entity @s[team=red] run team join red @e[tag=Mob_Start,type=chicken]
execute if entity @s[team=blue] run team join blue @e[tag=Mob_Start,type=chicken]

tag @n[tag=Mob_Start,type=chicken] remove Mob_Start