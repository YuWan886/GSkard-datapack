execute if entity @s[team=red] at @e[tag=blue_marker_6,limit=1] run summon minecraft:piglin ~ 0 ~ {Team:red,IsBaby:0b,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_sword"}}}
execute if entity @s[team=red] at @e[tag=blue_marker_8,limit=1] run summon minecraft:piglin ~ 0 ~ {Team:red,IsBaby:0b,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_sword"}}}

execute if entity @s[team=blue] at @e[tag=red_marker_6,limit=1] run summon minecraft:piglin ~ 0 ~ {Team:blue,IsBaby:0b,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_sword"}}}
execute if entity @s[team=blue] at @e[tag=red_marker_8,limit=1] run summon minecraft:piglin ~ 0 ~ {Team:blue,IsBaby:0b,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_sword"}}}

execute if entity @s[team=red] store result score @s Mob_Count_Nether if entity @e[type=#kards:nether,team=red]
execute if entity @s[team=blue] store result score @s Mob_Count_Nether if entity @e[type=#kards:nether,team=blue]

execute if entity @s[team=red,scores={Mob_Count_Nether=3..}] at @e[tag=blue_marker_7,limit=1] run summon minecraft:piglin_brute ~ 0 ~ {Team:red,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_axe"}},Health:40.0f,attributes:[{id:"follow_range",base:100},{id:"max_health",base:40}]}
execute if entity @s[team=blue,scores={Mob_Count_Nether=3..}] at @e[tag=red_marker_7,limit=1] run summon minecraft:piglin_brute ~ 0 ~ {Team:blue,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_axe"}},Health:40.0f,attributes:[{id:"follow_range",base:100},{id:"max_health",base:40}]}

scoreboard players reset @s Mob_Count_Nether

function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xiajieruqing kardCount
