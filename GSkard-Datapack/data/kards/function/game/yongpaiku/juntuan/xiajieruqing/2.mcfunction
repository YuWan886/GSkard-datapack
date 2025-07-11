execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:piglin ~ 1 ~ {Team:red,IsBaby:0b,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_sword"}}}
execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:piglin ~ 1 ~ {Team:blue,IsBaby:0b,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_sword"}}}
scoreboard players remove @s[scores={ronghui_jiben=1..}] ronghui_jiben 1
execute if score @s ronghui_jiben matches 1.. run function kards:game/yongpaiku/juntuan/xiajieruqing/2
