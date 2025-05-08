execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.tuteng.shengcheng.baomao.1",color:"red",hover_event:{action:"show_text","value":"队伍玩家获得速度2 回合结束时对敌方1个图腾造成4♥伤害"}}]

#红
execute if entity @s[team=red] at @e[tag=r_tuteng] run summon ocelot ~ 0 ~ {Team:red,Tags:[tuteng],Age:0,Silent:1b,attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f}
#蓝
execute if entity @s[team=blue] at @e[tag=b_tuteng] run summon ocelot ~ 0 ~ {Team:blue,Tags:[tuteng],Age:0,Silent:1b,attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f}
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 9
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1