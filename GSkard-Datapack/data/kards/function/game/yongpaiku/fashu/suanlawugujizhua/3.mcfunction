
tag @s add temp
execute store result score @s temp run data get entity @s Thrower[0]
execute as @a store result score @s temp run data get entity @s UUID[0]
execute as @a if score @s temp = @n[tag=temp] temp run tag @s add suanlawugujizhua_temp
scoreboard players reset * temp

kill @s

playsound minecraft:brmm player @a ~ ~ ~ 100 1 1
particle flame ~ ~ ~ 0 0 0 1 1 force @a

summon minecraft:phantom ~ ~ ~ {CustomName:{text:"成精鸡爪",bold:true,color:red},attributes:[{id:flying_speed,base:15},{id:"scale",base:0.3},{id:"entity_interaction_range",base:100},{id:"max_health",base:30.0f},{id:"attack_damage",base:1},{id:"attack_knockback",base:15}],Tags:["chengjingjizhua","chengjingjizhua_start"],Health:30.0f}

execute if entity @n[type=player,team=red,tag=suanlawugujizhua_temp] run team join blue @n[tag=chengjingjizhua_start]
execute if entity @n[type=player,team=blue,tag=suanlawugujizhua_temp] run team join red @n[tag=chengjingjizhua_start]

tag @e[tag=chengjingjizhua_start] remove chengjingjizhua_start
tag @a[tag=suanlawugujizhua_temp] remove suanlawugujizhua_temp