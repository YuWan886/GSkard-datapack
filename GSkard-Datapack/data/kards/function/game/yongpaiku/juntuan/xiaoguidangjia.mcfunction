

   
    execute if entity @s[team=red] as @e[tag=blue_marker_4] at @s run summon zombie ~ 1 ~ {Team:red,Tags:["凋零小鬼"],IsBaby:true,equipment:{mainhand:{id:"minecraft:stick"},head:{id: "minecraft:leather_helmet",components:{dyed_color:[0,0,0]}}}}
    execute if entity @s[team=red] as @e[tag=blue_marker_6] at @s run summon zombie ~ 1 ~ {Team:red,Tags:["缓慢小鬼"],IsBaby:true,equipment:{mainhand:{id:"minecraft:stick"},head:{id: "minecraft:leather_helmet",components:{dyed_color:[0.3, 0.28, 0.28]}}}}
    execute if entity @s[team=red] as @e[tag=blue_marker_8] at @s run summon zombie ~ 1 ~ {Team:red,Tags:["中毒小鬼"],IsBaby:true,equipment:{mainhand:{id:"minecraft:stick"},head:{id: "minecraft:leather_helmet",components:{dyed_color:[-0.01, 0.78, 0.42]}}}}
    execute if entity @s[team=red] as @e[tag=blue_marker_10] at @s run summon zombie ~ 1 ~ {Team:red,Tags:["失明小鬼"],IsBaby:true,equipment:{mainhand:{id:"minecraft:stick"},head:{id: "minecraft:leather_helmet",components:{dyed_color:[-0.05, 0.36, 0.12]}}}}

    execute if entity @s[team=blue] as @e[tag=red_marker_4] at @s run summon zombie ~ 1 ~ {Team:blue,Tags:["凋零小鬼"],IsBaby:true,equipment:{mainhand:{id:"minecraft:stick"},head:{id: "minecraft:leather_helmet",components:{dyed_color:[0,0,0]}}}}
    execute if entity @s[team=blue] as @e[tag=red_marker_6] at @s run summon zombie ~ 1 ~ {Team:blue,Tags:["缓慢小鬼"],IsBaby:true,equipment:{mainhand:{id:"minecraft:stick"},head:{id: "minecraft:leather_helmet",components:{dyed_color:[0.3, 0.28, 0.28]}}}}
    execute if entity @s[team=blue] as @e[tag=red_marker_8] at @s run summon zombie ~ 1 ~ {Team:blue,Tags:["中毒小鬼"],IsBaby:true,equipment:{mainhand:{id:"minecraft:stick"},head:{id: "minecraft:leather_helmet",components:{dyed_color:[-0.01, 0.78, 0.42]}}}}
    execute if entity @s[team=blue] as @e[tag=red_marker_10] at @s run summon zombie ~ 1 ~ {Team:blue,Tags:["失明小鬼"],IsBaby:true,equipment:{mainhand:{id:"minecraft:stick"},head:{id: "minecraft:leather_helmet",components:{dyed_color:[-0.05, 0.36, 0.12]}}}}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xiaoguidangjia kardCount
