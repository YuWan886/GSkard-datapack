execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.tuteng.shengcheng.cunmin.1",color:"red",hover_event:{action:"show_text","value":"存活效果：队伍怪物获得抗性提升1,友方铁傀儡获得速度1,且回合结束时治疗自己"}}]

execute if entity @s[team=red] at @e[tag=r_tuteng] run summon villager ~ 0 ~ {Team:red,Tags:[tuteng],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Age:0,Silent:1b}
execute if entity @s[team=blue] at @e[tag=b_tuteng] run summon villager ~ 0 ~ {Team:blue,Tags:[tuteng],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Age:0,Silent:1b}
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_cunmin kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1