#红队用
execute if entity @s[team=red] as @e[tag=7r] at @s run summon minecraft:piglin ~ 0 ~ {Team:red,IsBaby:0b,IsImmuneToZombification:true,HandItems:[{Count:1b,id:"minecraft:golden_sword",tag:{Damage:0}},{}],AngerTime:99999}
#蓝队用
execute if entity @s[team=blue] as @e[tag=7b] at @s run summon minecraft:piglin ~ 0 ~ {Team:blue,IsBaby:0b,IsImmuneToZombification:true,HandItems:[{Count:1b,id:"minecraft:golden_sword",tag:{Damage:0}},{}],AngerTime:99999}
scoreboard players remove @s[scores={ronghui_jiben=1..}] ronghui_jiben 1
execute if score @s ronghui_jiben matches 1.. run function kards:game/yongpaiku/juntuan/xiajieruqing/2