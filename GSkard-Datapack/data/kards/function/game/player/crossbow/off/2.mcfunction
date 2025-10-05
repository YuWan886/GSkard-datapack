summon armor_stand ~ ~ ~ {Tags:["temp"],Invisible:1b,Invulnerable:1b,Marker:1b}
item replace entity @n[tag=temp] weapon.offhand from entity @s weapon.offhand

execute store result score @s temp run data get entity @s equipment.offhand.components.minecraft:enchantments."minecraft:multishot"
scoreboard players set @n[tag=temp] temp 2
scoreboard players operation @s temp *= @n[tag=temp] temp
execute if score @s temp matches 1.. at @s run function kards:game/player/crossbow/off/3
scoreboard players set @n[tag=temp] temp 4
scoreboard players operation @s temp *= @n[tag=temp] temp
execute if score @s temp matches 1.. at @s run function kards:game/player/crossbow/off/3

data remove entity @n[tag=temp] equipment.offhand.components."minecraft:custom_data"

item replace entity @s weapon.offhand from entity @n[tag=temp] weapon.offhand
kill @n[tag=temp]
