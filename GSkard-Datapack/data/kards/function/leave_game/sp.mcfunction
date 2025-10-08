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
tellraw @a [{text: "欢迎老登",color:"gold"},{selector:"@s",color:"white"},{text: "再次进入游戏",color:"gold"}]
tellraw @a ["",{bold:true,click_event:{action:"open_url",url:"https://oopz.cn/i/MXc224"},text:"点我加入",extra:[{color:"gold",text:"GSkard"},"的",{color:"dark_green",text:"oopz"}]}]
team join Spectator @s
gamemode spectator @s
tp @s @r[gamemode=adventure]