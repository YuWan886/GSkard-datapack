execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.tuteng.shengcheng.tiekuilei.1",color:"red",hover_event:{action:"show_text","value":"在友方区域召唤一只75血的铁傀儡"}}]
execute if entity @s[team=red] as @e[tag=7b] at @s run summon iron_golem ~ 0 ~ {Team:red,attributes:[{id:"minecraft:max_health",base:75.0d}],Health:75.0f,Tags:[tuteng],CustomName: {"extra":[{translate: "game.end.reset.11"},{color:"gold",translate: "game.yongpaiku.tuteng.shengcheng.tiekuilei.2"}],translate: "game.end.reset.11"},CustomNameVisible:1b,PlayerCreated:0b}
execute if entity @s[team=blue] as @e[tag=7r] at @s run summon iron_golem ~ 0 ~ {Team:blue,attributes:[{id:"minecraft:max_health",base:75.0d}],Health:75.0f,Tags:[tuteng],CustomName: {"extra":[{translate: "game.end.reset.11"},{color:"gold",translate: "game.yongpaiku.tuteng.shengcheng.tiekuilei.2"}],translate: "game.end.reset.11"},CustomNameVisible:1b,PlayerCreated:0b}
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_tiekuilei kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1