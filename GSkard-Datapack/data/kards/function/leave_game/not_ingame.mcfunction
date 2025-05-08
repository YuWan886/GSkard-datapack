gamemode adventure @s
effect clear @s
tp @s 59 226 -26 -90 0
tag @s remove Ready
tag @s add Un_Ready
tag @s remove jishengnianye
tag @s remove TouXiang
clear @s
scoreboard players reset @s
attribute @s minecraft:max_health modifier remove 0-0-1
attribute @s minecraft:max_health modifier remove 0-0-2
attribute @s minecraft:max_health modifier remove 0-0-3
attribute @s minecraft:max_health modifier remove 0-0-4
attribute @s minecraft:max_health modifier remove 0-0-5
attribute @s minecraft:max_health modifier remove 0-0-6
attribute @s minecraft:max_health modifier remove 0-0-7
attribute @s minecraft:max_health modifier remove 0-0-8
attribute @s minecraft:max_health modifier remove 0-0-9
attribute @s minecraft:max_health modifier remove 0-0-10
attribute @s minecraft:max_health base set 20
attribute @s minecraft:jump_strength modifier remove 0-0-1
attribute @s minecraft:jump_strength modifier remove 0-0-2
attribute @s minecraft:jump_strength modifier remove 0-0-3
attribute @s minecraft:jump_strength base set 0.42
attribute @s minecraft:entity_interaction_range base set 3
execute at @s run summon minecraft:firework_rocket ~ ~ ~
team leave @s
tellraw @a [{translate: "leave_game.not_ingame.1",color:"gold"},{selector:"@s",color:"white"},{translate: "leave_game.not_ingame.2",color:"gold"}]
team join lobby @s
