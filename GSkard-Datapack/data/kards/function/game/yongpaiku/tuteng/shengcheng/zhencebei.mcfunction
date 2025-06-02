execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[侦测贝]",color:"red",hover_event:{action:"show_text",value:"队伍不会触发陷阱"}}]

execute if entity @s[team=red] at @e[tag=r_tuteng] run summon minecraft:shulker ~ 1 ~ {Team:red,Tags:[tuteng],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Color:14b,Age:0,Silent:1b}
execute if entity @s[team=blue] at @e[tag=b_tuteng] run summon minecraft:shulker ~ 1 ~ {Team:blue,Tags:[tuteng],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Color:11b,Age:0,Silent:1b}
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zhencebei kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1