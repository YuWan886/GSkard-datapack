execute if entity @s[team=red] at @e[tag=blue_Mob_StartPoint,limit=1,sort=random] run summon minecraft:happy_ghast ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"scale",base:0.3}],Tags:["Mob_Start","wanglingdajun"],Team:red}
execute if entity @s[team=blue] at @e[tag=red_Mob_StartPoint,limit=1,sort=random] run summon minecraft:happy_ghast ~ 5 ~ {attributes:[{id:"follow_range",base:100},{id:"scale",base:0.3}],Tags:["Mob_Start","wanglingdajun"],Team:blue}

execute as @e[tag=Mob_Start,type=!happy_ghast] run ride @s mount @n[tag=Mob_Start,type=happy_ghast]

execute if entity @s[team=red] run item replace entity @e[tag=Mob_Start,type=happy_ghast] armor.body with red_harness
execute if entity @s[team=blue] run item replace entity @e[tag=Mob_Start,type=happy_ghast] armor.body with blue_harness

tag @n[tag=Mob_Start,type=happy_ghast] remove Mob_Start

item replace entity @e[tag=Mob_Start,type=wither_skeleton] weapon.mainhand with bow
item replace entity @e[tag=Mob_Start,type=wither_skeleton] armor.head with minecraft:feather

scoreboard players remove @s kardCount 4
clear @s music_disc_mall[custom_data~{kards:'恶魂'}] 1

