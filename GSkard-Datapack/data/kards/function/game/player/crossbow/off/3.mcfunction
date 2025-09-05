data modify entity @n[tag=temp] equipment.offhand.components."minecraft:charged_projectiles" append value {id:"minecraft:arrow"}
scoreboard players remove @s temp 1
execute if score @s temp matches 1.. run function kards:game/player/crossbow/off/3