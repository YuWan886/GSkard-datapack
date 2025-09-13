gamemode adventure @s
effect clear @s
tp @s 59 226 -26 -90 0
tag @s remove Ready
tag @s add Un_Ready
tag @s remove jishengnianye
tag @s remove TouXiang
clear @s
scoreboard players reset @s
scoreboard players set @s chengmo 0
scoreboard players set @s DongJie 1
scoreboard players set @s DuanTui 1
scoreboard players set @s Fire 5
scoreboard players set @s PoJia 1
scoreboard players set @s XuanYun 1
scoreboard players set @s YongHan 0
scoreboard players set @s ZhongShang_Round 0
scoreboard players set @s ZhongShang_Tick 1

tag @s add XuanYun
tag @s add DuanTui
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
attribute @s minecraft:max_health modifier remove 0-0-12
attribute @s minecraft:max_health modifier remove 0-0-13
attribute @s minecraft:max_health modifier remove 1-0-1
attribute @s minecraft:max_health base set 20
attribute @s minecraft:jump_strength modifier remove 0-0-1
attribute @s minecraft:jump_strength modifier remove 0-0-2
attribute @s minecraft:jump_strength modifier remove 0-0-3
attribute @s minecraft:jump_strength modifier remove 0-0-5
attribute @s minecraft:jump_strength modifier remove 0-0-6
attribute @s minecraft:jump_strength base reset
attribute @s minecraft:scale base reset
attribute @s minecraft:movement_speed modifier remove 0-0-6
attribute @s minecraft:movement_speed modifier remove 0-0-7
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:entity_interaction_range modifier remove 0-0-2
attribute @s minecraft:entity_interaction_range modifier remove 0-0-3
attribute @s minecraft:entity_interaction_range modifier remove 0-0-4
attribute @s minecraft:entity_interaction_range base reset
attribute @s gravity modifier remove 0-0-1
attribute @s minecraft:gravity base reset
attribute @s safe_fall_distance modifier remove 0-0-2
attribute @s safe_fall_distance base reset
execute at @s run summon minecraft:firework_rocket ~ ~ ~
team leave @s
tellraw @s [{text: "欢迎老登",color:"gold"},{selector:"@s",color:"white"},{text: "再次进入游戏",color:"gold"}]
team join lobby @s
