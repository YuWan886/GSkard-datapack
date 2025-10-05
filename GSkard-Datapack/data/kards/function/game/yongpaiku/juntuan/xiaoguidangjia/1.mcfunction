function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] at @e[tag=blue_marker_4] run summon zombie ~ 0 ~ {Tags:["Mob_Start","xiaoguidangjia"],Team:red,IsBaby:true,equipment:{mainhand:{id:"minecraft:stick",components:{enchantments:{"kards:fire_protection":1,knockback:2}}},head:{id: "minecraft:leather_helmet",components:{dyed_color:15153412}}}}
execute if entity @s[team=red] at @e[tag=blue_marker_6] run summon zombie ~ 0 ~ {Tags:["Mob_Start","xiaoguidangjia"],Team:red,IsBaby:true,equipment:{mainhand:{id:"minecraft:stick",components:{enchantments:{"kards:fire_protection":1,knockback:2}}},head:{id: "minecraft:leather_helmet",components:{dyed_color:15153412}}}}
execute if entity @s[team=red] at @e[tag=blue_marker_8] run summon zombie ~ 0 ~ {Tags:["Mob_Start","xiaoguidangjia"],Team:red,IsBaby:true,equipment:{mainhand:{id:"minecraft:stick",components:{enchantments:{"kards:fire_protection":1,knockback:2}}},head:{id: "minecraft:leather_helmet",components:{dyed_color:15153412}}}}
execute if entity @s[team=red] at @e[tag=blue_marker_10] run summon zombie ~ 0 ~ {Tags:["Mob_Start","xiaoguidangjia"],Team:red,IsBaby:true,equipment:{mainhand:{id:"minecraft:stick",components:{enchantments:{"kards:fire_protection":1,knockback:2}}},head:{id: "minecraft:leather_helmet",components:{dyed_color:15153412}}}}

execute if entity @s[team=blue] at @e[tag=red_marker_4] run summon zombie ~ 0 ~ {Tags:["Mob_Start","xiaoguidangjia"],Team:blue,IsBaby:true,equipment:{mainhand:{id:"minecraft:stick",components:{enchantments:{"kards:fire_protection":1,knockback:2}}},head:{id: "minecraft:leather_helmet",components:{dyed_color:15153412}}}}
execute if entity @s[team=blue] at @e[tag=red_marker_6] run summon zombie ~ 0 ~ {Tags:["Mob_Start","xiaoguidangjia"],Team:blue,IsBaby:true,equipment:{mainhand:{id:"minecraft:stick",components:{enchantments:{"kards:fire_protection":1,knockback:2}}},head:{id: "minecraft:leather_helmet",components:{dyed_color:15153412}}}}
execute if entity @s[team=blue] at @e[tag=red_marker_8] run summon zombie ~ 0 ~ {Tags:["Mob_Start","xiaoguidangjia"],Team:blue,IsBaby:true,equipment:{mainhand:{id:"minecraft:stick",components:{enchantments:{"kards:fire_protection":1,knockback:2}}},head:{id: "minecraft:leather_helmet",components:{dyed_color:15153412}}}}
execute if entity @s[team=blue] at @e[tag=red_marker_10] run summon zombie ~ 0 ~ {Tags:["Mob_Start","xiaoguidangjia"],Team:blue,IsBaby:true,equipment:{mainhand:{id:"minecraft:stick",components:{enchantments:{"kards:fire_protection":1,knockback:2}}},head:{id: "minecraft:leather_helmet",components:{dyed_color:15153412}}}}

execute as @e[tag=Mob_Start] at @s run function kards:game/yongpaiku/juntuan/xiaoguidangjia/2

execute if entity @s[team=red] if entity @e[tag=tuteng,type=chicken,team=red] as @e[tag=Mob_Start] at @s run function kards:game/yongpaiku/juntuan/xiaoguidangjia/3
execute if entity @s[team=blue] if entity @e[tag=tuteng,type=chicken,team=blue] as @e[tag=Mob_Start] at @s run function kards:game/yongpaiku/juntuan/xiaoguidangjia/3

tag @e[tag=Mob_Start] remove Mob_Start

function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xiaoguidangjia kardCount

