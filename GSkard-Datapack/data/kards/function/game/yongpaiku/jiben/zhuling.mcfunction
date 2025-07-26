



   execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon minecraft:piglin ~ 1 ~ {Team:red,IsBaby:false,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_sword"},head:{id:"minecraft:golden_helmet"},chest:{id: "minecraft:golden_chestplate"},legs:{id: "minecraft:golden_leggings"},feet:{id: "minecraft:golden_boots"}},attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}

   execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon minecraft:piglin ~ 1 ~ {Team:blue,IsBaby:false,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_sword"},head:{id:"minecraft:golden_helmet"},chest:{id: "minecraft:golden_chestplate"},legs:{id: "minecraft:golden_leggings"},feet:{id: "minecraft:golden_boots"}},attributes:[{id:"follow_range",base:100},{id:"safe_fall_distance",base:7}]}
function kards:game/yongpaiku/use_general/jiben
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zhuling kardCount


