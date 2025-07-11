execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[村民]",color:"red",hover_event:{action:"show_text",value:"存活效果：队伍怪物获得抗性提升1,友方铁傀儡获得速度1,且回合结束时治疗自己"}}]
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] at @e[tag=r_tuteng,limit=1] run summon villager ~ 0 ~ {Team:red,Tags:["tuteng"],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Age:0,Silent:1b}
execute if entity @s[team=blue] at @e[tag=b_tuteng,limit=1] run summon villager ~ 0 ~ {Team:blue,Tags:["tuteng"],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Age:0,Silent:1b}
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_cunmin kardCount
