summon armor_stand ~ ~ ~ {Tags:["temp"],Invisible:1b,Invulnerable:1b,Marker:1b}
execute at @s run item replace entity @n[tag=temp] weapon.mainhand from entity @s weapon.mainhand

execute at @s as @n[tag=temp] store result score @s temp run data get entity @s equipment.mainhand.components."minecraft:attribute_modifiers".[0].amount
execute at @s as @n[tag=temp] store result entity @s equipment.mainhand.components."minecraft:attribute_modifiers".[0].amount int 1 run scoreboard players add @s temp 10


item replace entity @s weapon.mainhand from entity @n[tag=temp] weapon.mainhand
kill @n[tag=temp]