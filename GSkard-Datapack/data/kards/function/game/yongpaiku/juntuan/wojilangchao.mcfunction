execute if entity @s[team=blue] at @e[tag=red_marker_6] run summon minecraft:guardian ~ 0 ~ {Team:blue,Passengers:[{id:"minecraft:drowned",equipment:{mainhand:{id:"minecraft:trident",count:1}},Team:blue,Tags:["Mob_Start"]}]}
execute if entity @s[team=blue] at @e[tag=red_marker_8] run summon minecraft:guardian ~ 0 ~ {Team:blue,Passengers:[{id:"minecraft:drowned",equipment:{mainhand:{id:"minecraft:trident",count:1}},Team:blue,Tags:["Mob_Start"]}]}
   
execute if entity @s[team=red] at @e[tag=blue_marker_6] run summon minecraft:guardian ~ 0 ~ {Team:red,Passengers:[{id:"minecraft:drowned",equipment:{mainhand:{id:"minecraft:trident",count:1}},Team:red,Tags:["Mob_Start"]}]}
execute if entity @s[team=red] at @e[tag=blue_marker_8] run summon minecraft:guardian ~ 0 ~ {Team:red,Passengers:[{id:"minecraft:drowned",equipment:{mainhand:{id:"minecraft:trident",count:1}},Team:red,Tags:["Mob_Start"]}]}

execute if entity @s[team=red] if score 蓝队 manshui matches 1 as @e[tag=Mob_Start] run item replace entity @s weapon.mainhand with trident[enchantments={"kards:leiji":1}]
execute if entity @s[team=red] if score 蓝队 manshui matches 1 run scoreboard players remove @s kardCount 8
execute if entity @s[team=blue] if score 红队 manshui matches 1 as @e[tag=Mob_Start] run item replace entity @s weapon.mainhand with trident[enchantments={"kards:leiji":1}]
execute if entity @s[team=blue] if score 红队 manshui matches 1 run scoreboard players remove @s kardCount 8

tag @e[tag=Mob_Start] remove Mob_Start

function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wojilangchao kardCount
