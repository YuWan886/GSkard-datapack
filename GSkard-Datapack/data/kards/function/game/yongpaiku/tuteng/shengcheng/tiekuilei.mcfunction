execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[铁傀儡]",color:"red",hover_event:{action:"show_text",value:"在友方区域召唤一只75血的铁傀儡"}}]
execute if entity @s[team=red] at @e[tag=red_marker_7,limit=1] run summon iron_golem ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:75.0d}],Health:75.0f,Tags:[tuteng],CustomName: {"extra":[{text: ""},{color:"gold",text: "铁傀儡"}],text: ""},CustomNameVisible:1b,PlayerCreated:0b}
execute if entity @s[team=blue] at @e[tag=blue_marker_7,limit=1] run summon iron_golem ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7},{id:"minecraft:max_health",base:75.0d}],Health:75.0f,Tags:[tuteng],CustomName: {"extra":[{text: ""},{color:"gold",text: "铁傀儡"}],text: ""},CustomNameVisible:1b,PlayerCreated:0b}
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_tiekuilei kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1