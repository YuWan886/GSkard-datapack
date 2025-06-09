#红队玩家触发
execute if entity @s[team=red] at @e[tag=red_marker_7,limit=1] run summon creeper ~ 5 ~ {Team:blue,Fuse:15}
execute if entity @s[team=red] run scoreboard players set 红队 xianjin_jingxiahezi 0

#蓝队玩家触发
execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon creeper ~ 5 ~ {Team:red,Fuse:15}
execute if entity @s[team=blue] run scoreboard players set 红队 xianjin_jingxiahezi 0

tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<惊吓盒子>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时在触发者场地生成1只略微加速爆炸的苦力怕"}}]
playsound minecraft:entity.elder_guardian.curse player @a ~ ~ ~ 100 1