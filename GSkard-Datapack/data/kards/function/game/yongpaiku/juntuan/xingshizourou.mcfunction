execute if entity @s[team=red] at @e[tag=blue_marker_7] run summon zombie ~ 0 ~ {Team:red,IsBaby:true,equipment:{head:{id:"minecraft:dispenser"}},Tags:["Mob_Start"]}
execute if entity @s[team=red] at @e[tag=blue_marker_1] run summon zombie ~ 0 ~ {Team:red,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}},Tags:["Mob_Start"]}
execute if entity @s[team=red] at @e[tag=blue_marker_3] run summon zombie ~ 0 ~ {Team:red,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}},Tags:["Mob_Start"]}
execute if entity @s[team=red] at @e[tag=blue_marker_11] run summon zombie ~ 0 ~ {Team:red,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}},Tags:["Mob_Start"]}
execute if entity @s[team=red] at @e[tag=blue_marker_13] run summon zombie ~ 0 ~ {Team:red,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}},Tags:["Mob_Start"]}

execute if entity @s[team=blue] at @e[tag=red_marker_7] run summon zombie ~ 0 ~ {Team:blue,IsBaby:true,equipment:{head:{id:"minecraft:dispenser"}},Tags:["Mob_Start"]}
execute if entity @s[team=blue] at @e[tag=red_marker_1] run summon zombie ~ 0 ~ {Team:blue,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}},Tags:["Mob_Start"]}
execute if entity @s[team=blue] at @e[tag=red_marker_3] run summon zombie ~ 0 ~ {Team:blue,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}},Tags:["Mob_Start"]}
execute if entity @s[team=blue] at @e[tag=red_marker_11] run summon zombie ~ 0 ~ {Team:blue,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}},Tags:["Mob_Start"]}
execute if entity @s[team=blue] at @e[tag=red_marker_13] run summon zombie ~ 0 ~ {Team:blue,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}},Tags:["Mob_Start"]}

execute if entity @s[team=red] if entity @e[tag=jiben_zombie,team=red] as @e[tag=Mob_Start] run data modify entity @s IsBaby set value true
execute if entity @s[team=blue] if entity @e[tag=jiben_zombie,team=blue] as @e[tag=Mob_Start] run data modify entity @s IsBaby set value true

tag @e[tag=Mob_Start] remove Mob_Start

function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xingshizourou kardCount
