gamemode adventure @s
effect clear @s
tp @s 59 226 -26 -90 0
tag @s remove Ready
tag @s add Un_Ready
tag @s remove jishengnianye
tag @s remove TouXiang
clear @s
scoreboard players reset @s
function kards:game/end/bossbar_reset/1
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
tellraw @a ["",{color:"gold",bold:true,text:"官方链接："},{color:"dark_purple",bold:true,text:"[WIKI]",click_event:{action:"open_url",url:"https://hartgs.yw-games.top"},hover_event:{action:"show_text",value:["",{text:"点击查看 GSkard WIKI"}]}},{color:"gold",bold:true,text:" "},{color:"blue",bold:true,text:"[QQ]",click_event:{action:"open_url",url:"https://qm.qq.com/q/keCUAnEEca"},hover_event:{action:"show_text",value:["",{text:"点击加入 GSkard 官方群聊"}]}},{bold:true,text:" "},{color:"black",bold:true,text:"[oopz]",click_event:{action:"open_url",url:"https://oopz.cn/i/NiDL0U"},hover_event:{action:"show_text",value:["",{text:"点击加入 GSkard 官方语音"}]}},{bold:true,text:" "},{color:"dark_red",bold:true,text:"[BUG]",click_event:{action:"open_url",url:"https://docs.qq.com/smartsheet/DWHp5SWxGWGt5Q1RO"},hover_event:{action:"show_text",value:["",{text:"点击反馈BUG"}]}}]
team join lobby @s
