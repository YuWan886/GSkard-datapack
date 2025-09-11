scoreboard players remove @s temp_2 1
execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:piglin ~ 0 ~ {Team:red,IsBaby:0b,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_sword"},head:{id:"golden_helmet"},chest:{id:"golden_chestplate"},legs:{id:"golden_leggings"},feet:{id:"golden_boots"}}}

execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:piglin ~ 0 ~ {Team:blue,IsBaby:0b,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_sword"},head:{id:"golden_helmet"},chest:{id:"golden_chestplate"},legs:{id:"golden_leggings"},feet:{id:"golden_boots"}}}
execute if score @s temp_2 matches 1.. run function kards:game/yongpaiku/juntuan/xiajieruqing/2