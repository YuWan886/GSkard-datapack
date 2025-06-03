#侦测贝

execute if entity @s[team=blue] if entity @e[tag=tuteng,team=blue,type=shulker] run return fail
#施法小鬼
execute if entity @s[team=red] if score 红队 xianjin_shifaxiaogui matches 1 at @s run summon zombie ~ ~ ~ {IsBaby:1b,Team:blue,attributes:[{id:"follow_range",base:100},{id:"minecraft:movement_speed",base:0.6d}]}
execute if entity @s[team=red] if score 红队 xianjin_shifaxiaogui matches 1 run tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<施法小鬼>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时在触发者场地生成1只移速提升的小僵尸"}}]
execute if entity @s[team=red] if score 红队 xianjin_shifaxiaogui matches 1 if entity @e[tag=tuteng,team=red,type=shulker] run return fail
execute if entity @s[team=red] if score 红队 xianjin_shifaxiaogui matches 1 as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1
execute if entity @s[team=red] if score 红队 xianjin_shifaxiaogui matches 1 run scoreboard players set 红队 xianjin_shifaxiaogui 0

execute if entity @s[team=blue] if score 蓝队 xianjin_shifaxiaogui matches 1 at @s run summon zombie ~ ~ ~ {IsBaby:1b,Team:red,attributes:[{id:"follow_range",base:100},{id:"minecraft:movement_speed",base:0.6d}]}
execute if entity @s[team=blue] if score 蓝队 xianjin_shifaxiaogui matches 1 run tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<施法小鬼>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时在触发者场地生成1只移速提升的小僵尸"}}]
execute if entity @s[team=blue] if score 蓝队 xianjin_shifaxiaogui matches 1 as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1
execute if entity @s[team=blue] if score 蓝队 xianjin_shifaxiaogui matches 1 run scoreboard players set 蓝队 xianjin_shifaxiaogui 0

#惊吓盒子
execute if entity @s[team=red] if score 红队 xianjin_jingxiahezi matches 1 at @e[tag=7b,limit=1] run summon creeper ~ 0 ~ {Team:blue,Fuse:15}
execute if entity @s[team=red] if score 红队 xianjin_jingxiahezi matches 1 run tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<惊吓盒子>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时在触发者场地生成1只略微加速爆炸的苦力怕"}}]
execute if entity @s[team=red] if score 红队 xianjin_jingxiahezi matches 1 as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1
execute if entity @s[team=red] if score 红队 xianjin_jingxiahezi matches 1 run scoreboard players set 红队 xianjin_jingxiahezi 0

execute if entity @s[team=blue] if score 蓝队 xianjin_jingxiahezi matches 1 at @e[tag=7r,limit=1] run summon creeper ~ 0 ~ {Team:red,Fuse:15}
execute if entity @s[team=blue] if score 蓝队 xianjin_jingxiahezi matches 1 run tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<惊吓盒子>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时在触发者场地生成1只略微加速爆炸的苦力怕"}}]
execute if entity @s[team=blue] if score 蓝队 xianjin_jingxiahezi matches 1 as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1
execute if entity @s[team=blue] if score 蓝队 xianjin_jingxiahezi matches 1 run scoreboard players set 蓝队 xianjin_jingxiahezi 0

#魔力腐蚀
execute if entity @s[team=red] if score 红队 xianjin_molifushi matches 1 run damage @s 10 kards:molifushi
execute if entity @s[team=red] if score 红队 xianjin_molifushi matches 1 run tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<魔力腐蚀>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时对触发者造成5♥真实伤害"}}]
execute if entity @s[team=red] if score 红队 xianjin_molifushi matches 1 as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1
execute if entity @s[team=red] if score 红队 xianjin_molifushi matches 1 run scoreboard players set 红队 xianjin_molifushi 0

execute if entity @s[team=blue] if score 蓝队 xianjin_molifushi matches 1 run damage @s 10 kards:molifushi
execute if entity @s[team=blue] if score 蓝队 xianjin_molifushi matches 1 run tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<魔力腐蚀>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时对触发者造成5♥真实伤害"}}]
execute if entity @s[team=blue] if score 蓝队 xianjin_molifushi matches 1 as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1
execute if entity @s[team=blue] if score 蓝队 xianjin_molifushi matches 1 run scoreboard players set 蓝队 xianjin_molifushi 0

#<法术失效>
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches 1 run tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<法术失效>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时使该法术失效"}}]
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches 1 as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1

execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches 1 run tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<法术失效>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时使该法术失效"}}]
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches 1 as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1

#<诱敌>
execute if entity @s[team=red] if score 红队 xianjin_youdi matches 1.. run scoreboard players remove 红队 xianjin_youdi 1
execute if entity @s[team=red] if score 红队 xianjin_youdi matches 1 run tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<诱敌>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时使该法术失效(对于第二张法术牌)"}}]
execute if entity @s[team=red] if score 红队 xianjin_youdi matches 1 as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1

execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches 1.. run scoreboard players remove 蓝队 xianjin_youdi 1
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches 1 run tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<诱敌>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时使该法术失效(对于第二张法术牌)"}}]
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches 1 as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1
