

   
    execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon zombie ~ 1 ~ {Team:red,IsBaby:true,equipment:{head:{id:"minecraft:dispenser"}}}
    execute if entity @s[team=red] as @e[tag=blue_marker_1] at @s run summon zombie ~ 1 ~ {Team:red,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}}}
    execute if entity @s[team=red] as @e[tag=blue_marker_3] at @s run summon zombie ~ 1 ~ {Team:red,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}}}
    execute if entity @s[team=red] as @e[tag=blue_marker_11] at @s run summon zombie ~ 1 ~ {Team:red,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}}}
    execute if entity @s[team=red] as @e[tag=blue_marker_13] at @s run summon zombie ~ 1 ~ {Team:red,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}}}

    execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon zombie ~ 1 ~ {Team:blue,IsBaby:true,equipment:{head:{id:"minecraft:dispenser"}}}
    execute if entity @s[team=blue] as @e[tag=red_marker_1] at @s run summon zombie ~ 1 ~ {Team:blue,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}}}
    execute if entity @s[team=blue] as @e[tag=red_marker_3] at @s run summon zombie ~ 1 ~ {Team:blue,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}}}
    execute if entity @s[team=blue] as @e[tag=red_marker_11] at @s run summon zombie ~ 1 ~ {Team:blue,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}}}
    execute if entity @s[team=blue] as @e[tag=red_marker_13] at @s run summon zombie ~ 1 ~ {Team:blue,IsBaby:false,equipment:{head:{id:"minecraft:dispenser"}}}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xingshizourou kardCount
