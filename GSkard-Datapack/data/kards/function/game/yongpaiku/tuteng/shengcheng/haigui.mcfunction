execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.tuteng.shengcheng.haigui.1",color:"red",hover_event:{action:"show_text","value":"己方敌对生物获得缓慢1"}}]

execute if entity @s[team=red] at @e[tag=r_tuteng] run summon minecraft:turtle ~ 0 ~ {Team:red,Tags:[tuteng],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Age:0,Silent:1b}
execute if entity @s[team=blue] at @e[tag=b_tuteng] run summon minecraft:turtle ~ 0 ~ {Team:blue,Tags:[tuteng],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Age:0,Silent:1b}
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 9
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1