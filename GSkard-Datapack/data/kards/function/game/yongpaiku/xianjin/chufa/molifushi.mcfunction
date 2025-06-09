#红队玩家触发
execute if entity @s[team=red] run scoreboard players set 红队 xianjin_molifushi 0

#蓝队玩家触发
execute if entity @s[team=blue] run scoreboard players set 红队 xianjin_molifushi 0

damage @s 10 kards:molifushi

tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<魔力腐蚀>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时对触发者造成5♥真实伤害"}}]
playsound minecraft:entity.elder_guardian.curse player @a ~ ~ ~ 100 1